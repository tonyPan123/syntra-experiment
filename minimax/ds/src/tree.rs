use std::cell::RefCell;
use std::rc::{Rc, Weak};

use serde::Serialize;

#[derive(Debug, Serialize)]
pub struct Tree<T>
where
    T: Serialize,
{
    data: RefCell<T>,
    #[serde(skip_serializing)]
    parent: RefCell<Weak<Tree<T>>>,
    children: RefCell<Vec<Rc<Tree<T>>>>,
}

impl<T> Tree<T>
where
    T: Serialize,
{
    pub fn new(data: T) -> Tree<T> {
        Tree {
            data: RefCell::new(data),
            parent: RefCell::new(Weak::new()),
            children: RefCell::new(vec![]),
        }
    }
}

impl<T> Tree<T>
where
    T: Serialize,
{
    // pub fn add_child(&self, child: Rc<Tree<T>>) {
    //     self.children.borrow_mut().push(child);
    //     // Need the count of self also. So need to pass a weak/rc object.
    // }

    pub fn add_child(root: &Weak<Tree<T>>, child: Rc<Tree<T>>) {
        child.parent.replace(Weak::clone(root));
        root.upgrade().unwrap().children.borrow_mut().push(child);
    }

    pub fn is_leaf(&self) -> bool {
        self.children.borrow().is_empty()
    }

    pub fn is_root(&self) -> bool {
        self.parent.borrow().upgrade().is_none()
    }

    pub fn parent(&self) -> Weak<Tree<T>> {
        let p: &Weak<Tree<T>> = &self.parent.borrow();
        Weak::clone(p)
    }

    pub fn borrow_data_mut(&self) -> std::cell::RefMut<T> {
        self.data.borrow_mut()
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    use std::fs::File;

    #[test]
    fn test_serialization() {
        let root = Rc::new(Tree::new(0));
        {
            let mut i = 0;
            let mut p = Rc::downgrade(&root);
            for _ in 0..100 {
                i += 1;
                let c1 = Rc::new(Tree::new(i));
                i += 1;
                let c2 = Rc::new(Tree::new(i));
                let w_c1 = Rc::downgrade(&c1);
                Tree::add_child(&p, c1);
                Tree::add_child(&p, c2);
                p = w_c1;
            }
        }
        let mut file = File::create("tmp.json").unwrap();
        serde_json::to_writer(&mut file, &root).unwrap();
        drop(file);

        // let child = Rc::new(Tree {
        //     data: 1,
        //     parent: RefCell::new(Weak::new()),
        //     children: RefCell::new(vec![]),
        // });
        // Tree::add_child(Rc::downgrade(&root), child);

        // println!("{:?}", root);

        // let mut file = File::create("tmp.json").unwrap();
        // serde_json::to_writer(&mut file, &root).unwrap();
        // drop(file);
    }
}
