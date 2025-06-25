pub mod inner;

pub use inner::sub;

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn sub_works2() {
        let result = sub(2, 2);
        assert_eq!(result, 0);
    }
}