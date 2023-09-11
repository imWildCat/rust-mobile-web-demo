pub fn add(left: i32, right: i32) -> i32 {
    left + right
}

uniffi::include_scaffolding!("shared_lib");

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn it_works() {
        let result = add(2, 2);
        assert_eq!(result, 4);
    }
}
