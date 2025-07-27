use num_integer::Integer;
use num_traits::ToPrimitive;
use serde::Serialize;
use std::fmt::{Display, Formatter};
use std::hash::Hash;
use std::mem::size_of;
use std::ops::{Add, Div, Mul, Neg, Sub};
use std::str::FromStr;

#[derive(Clone, PartialEq, Debug, Copy, Serialize)]
pub struct MyF64(pub f64);

impl MyF64 {
    #[inline]
    pub fn new(n: i64, d: i64) -> Self {
        MyF64((n as f64) / (d as f64))
    }

    #[inline]
    pub const fn new_raw(n: i64, d: i64) -> Self {
        // print!("Warning new_raw on MyF64 should not be used");
        MyF64(0.25)
    }

    #[inline]
    pub fn floor(&self) -> i64 {
        self.0.floor() as i64
    }

    #[inline]
    pub fn ceil(&self) -> i64 {
        self.0.ceil() as i64
    }
}

impl Display for MyF64 {
    fn fmt(&self, f: &mut Formatter<'_>) -> std::fmt::Result {
        write!(f, "{:.2}", self.0)
    }
}

impl Hash for MyF64 {
    #[inline]
    fn hash<H: std::hash::Hasher>(&self, state: &mut H) {
        self.0.to_bits().hash(state);
    }
}

impl Eq for MyF64 {}

impl Ord for MyF64 {
    #[inline]
    fn cmp(&self, other: &Self) -> std::cmp::Ordering {
        self.0.partial_cmp(&other.0).unwrap()
    }
}

impl PartialOrd for MyF64 {
    #[inline]
    fn partial_cmp(&self, other: &Self) -> Option<std::cmp::Ordering> {
        Some(self.cmp(&other))
    }
}

impl Mul for MyF64 {
    type Output = Self;
    #[inline]
    fn mul(self, rhs: Self) -> Self::Output {
        MyF64(self.0 * rhs.0)
    }
}

impl<T> Mul<T> for MyF64
where
    T: Clone + ToPrimitive + Integer,
{
    type Output = Self;
    #[inline]
    fn mul(self, rhs: T) -> MyF64 {
        MyF64(self.0 * (rhs.to_f64().unwrap()))
    }
}

impl Add for MyF64 {
    type Output = Self;
    #[inline]
    fn add(self, rhs: Self) -> Self::Output {
        MyF64(self.0 + rhs.0)
    }
}

impl Neg for MyF64 {
    type Output = Self;
    #[inline]
    fn neg(self) -> Self::Output {
        MyF64(-self.0)
    }
}

impl Sub for MyF64 {
    type Output = Self;
    #[inline]
    fn sub(self, rhs: Self) -> Self::Output {
        MyF64(self.0 - rhs.0)
    }
}

impl Div for MyF64 {
    type Output = Self;
    #[inline]
    fn div(self, rhs: Self) -> Self::Output {
        MyF64(self.0 / rhs.0)
    }
}

impl<T> Div<T> for MyF64
where
    T: Clone + ToPrimitive + Integer,
{
    type Output = Self;
    #[inline]
    fn div(self, rhs: T) -> MyF64 {
        MyF64(self.0 / (rhs.to_f64().unwrap()))
    }
}

impl<T> From<T> for MyF64
where
    T: Clone + ToPrimitive + Integer,
{
    #[inline]
    fn from(i: T) -> Self {
        MyF64(i.to_f64().unwrap())
    }
}

// impl<T> From<(T, T)> for MyF64
// where
//     T: Clone + Integer,
// {
//     fn from(pair: (T, T)) -> MyF64 {
//         MyF64((pair.0 as f64)/(pair.1 as f64))
//     }
// }

// pub struct ParseMyF64Err;

// impl FromStr for MyF64 {
//     type Err = ParseMyF64Err;

//     /// Parses `numer/denom` or just `numer`.
//     fn from_str(s: &str) -> Result<Self, Self::Err> {
//         let mut split = s.splitn(2, '/');

//         let n = split.next().ok_or(ParseMyF64Err)?;
//         let num = FromStr::from_str(n).map_err(|_| ParseMyF64Err)?;

//         let d = split.next().unwrap_or("1");
//         let den = FromStr::from_str(d).map_err(|_| ParseMyF64Err)?;

//         if Zero::is_zero(&den) {
//             Err(ParseMyF64Err)
//         } else {
//             Ok(MyF64::new(num, den))
//         }
//     }
// }

impl FromStr for MyF64 {
    type Err = String;

    fn from_str(s: &str) -> Result<Self, Self::Err> {
        Ok(Self(s.parse().map_err(|e| format!("{e}"))?))
    }
}

macro_rules! impl_to_primitive_float_to_float {
    ($SrcT:ident : $( fn $method:ident -> $DstT:ident ; )*) => {$(
        #[inline]
        fn $method(&self) -> Option<$DstT> {
            // We can safely cast all values, whether NaN, +-inf, or finite.
            // Finite values that are reducing size may saturate to +-inf.
            Some(self.0 as $DstT)
        }
    )*}
}

#[cfg(has_to_int_unchecked)]
macro_rules! float_to_int_unchecked {
    // SAFETY: Must not be NaN or infinite; must be representable as the integer after truncating.
    // We already checked that the float is in the exclusive range `(MIN-1, MAX+1)`.
    ($float:expr => $int:ty) => {
        unsafe { $float.to_int_unchecked::<$int>() }
    };
}

#[cfg(not(has_to_int_unchecked))]
macro_rules! float_to_int_unchecked {
    ($float:expr => $int:ty) => {
        $float as $int
    };
}

macro_rules! impl_to_primitive_float_to_signed_int {
    ($f:ident : $( $(#[$cfg:meta])* fn $method:ident -> $i:ident ; )*) => {$(
        #[inline]
        $(#[$cfg])*
        fn $method(&self) -> Option<$i> {
            // Float as int truncates toward zero, so we want to allow values
            // in the exclusive range `(MIN-1, MAX+1)`.
            if size_of::<$f>() > size_of::<$i>() {
                // With a larger size, we can represent the range exactly.
                const MIN_M1: f64 = $i::MIN as f64 - 1.0;
                const MAX_P1: f64 = $i::MAX as f64 + 1.0;
                if self.0 > MIN_M1 && self.0 < MAX_P1 {
                    return Some(float_to_int_unchecked!(self.0 => $i));
                }
            } else {
                // We can't represent `MIN-1` exactly, but there's no fractional part
                // at this magnitude, so we can just use a `MIN` inclusive boundary.
                const MIN: f64 = $i::MIN as f64;
                // We can't represent `MAX` exactly, but it will round up to exactly
                // `MAX+1` (a power of two) when we cast it.
                const MAX_P1: f64 = $i::MAX as f64;
                if self.0 >= MIN && self.0 < MAX_P1 {
                    return Some(float_to_int_unchecked!(self.0 => $i));
                }
            }
            None
        }
    )*}
}

macro_rules! impl_to_primitive_float_to_unsigned_int {
    ($f:ident : $( $(#[$cfg:meta])* fn $method:ident -> $u:ident ; )*) => {$(
        #[inline]
        $(#[$cfg])*
        fn $method(&self) -> Option<$u> {
            // Float as int truncates toward zero, so we want to allow values
            // in the exclusive range `(-1, MAX+1)`.
            if size_of::<$f>() > size_of::<$u>() {
                // With a larger size, we can represent the range exactly.
                const MAX_P1: f64 = $u::MAX as f64 + 1.0;
                if self.0 > -1.0 && self.0 < MAX_P1 {
                    return Some(float_to_int_unchecked!(self.0 => $u));
                }
            } else {
                // We can't represent `MAX` exactly, but it will round up to exactly
                // `MAX+1` (a power of two) when we cast it.
                // (`u128::MAX as f32` is infinity, but this is still ok.)
                const MAX_P1: f64 = $u::MAX as f64;
                if self.0 > -1.0 && self.0 < MAX_P1 {
                    return Some(float_to_int_unchecked!(self.0 => $u));
                }
            }
            None
        }
    )*}
}

macro_rules! impl_to_primitive_float {
    ($T:ident) => {
        impl ToPrimitive for $T {
            impl_to_primitive_float_to_signed_int! { $T:
                fn to_isize -> isize;
                fn to_i8 -> i8;
                fn to_i16 -> i16;
                fn to_i32 -> i32;
                fn to_i64 -> i64;
                #[cfg(has_i128)]
                fn to_i128 -> i128;
            }

            impl_to_primitive_float_to_unsigned_int! { $T:
                fn to_usize -> usize;
                fn to_u8 -> u8;
                fn to_u16 -> u16;
                fn to_u32 -> u32;
                fn to_u64 -> u64;
                #[cfg(has_i128)]
                fn to_u128 -> u128;
            }

            impl_to_primitive_float_to_float! { $T:
                fn to_f32 -> f32;
                fn to_f64 -> f64;
            }
        }
    };
}

impl_to_primitive_float!(MyF64);
