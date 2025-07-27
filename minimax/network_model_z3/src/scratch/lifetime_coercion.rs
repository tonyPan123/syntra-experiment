struct My(i32);

fn call_with_ref<F>(some_closure: F) -> i32
where
    F: for<'a> Fn(&'a My) -> &'a i32,
{
    let value = My(0);
    *some_closure(&value)
}

fn coerce<F>(closure: F) -> F
where F: for<'a> Fn(&'a My) -> &'a i32
{
    return closure
}

fn fun()
{
    // Does not work
    // let _f = |arg: &My| &arg.0;
    // call_with_ref(_f);

    // Workaround
    let _f = coerce(|arg: &My| &arg.0);
    call_with_ref(_f);

    // This is ok.
    call_with_ref(|arg: &My| &arg.0);
}

fn optional_call_with_ref<F>(some_closure: Option<F>) -> i32
where
    F: for<'a> Fn(&'a My) -> &'a i32,
{
    let value = My(0);
    *(some_closure.unwrap())(&value)
}

fn fun2()
{
    // Does not work, have to use explicit coercion.
    // optional_call_with_ref(Some(|arg: &My| &arg.0));

    // Workaround
    let _f = coerce(|arg: &My| &arg.0);
    optional_call_with_ref(Some(_f));
}

fn main() {
    fun();
    fun2();
}