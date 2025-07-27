use num_rational::Ratio;

pub mod interval;
pub mod tree;
// pub mod my_f64;

pub type RealNumInt = i32;
pub type RealNumRep = Ratio<RealNumInt>;
// pub type RealNumRep = my_f64::MyF64;


pub mod serde_real {
    use num_traits::ToPrimitive;

    pub fn serialize<S>(x: &super::RealNumRep, serializer: S) -> Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        serializer.serialize_f64(x.to_f64().unwrap())
    }
}

pub mod serde_optional_real {
    use num_traits::ToPrimitive;

    pub fn serialize<S>(x: &Option<super::RealNumRep>, serializer: S) -> Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        if x.is_none() {
            serializer.serialize_none()
        } else {
            serializer.serialize_f64(x.unwrap().to_f64().unwrap())
        }
    }
}