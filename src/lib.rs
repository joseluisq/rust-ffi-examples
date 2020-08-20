#[no_mangle]
pub fn greeting() -> *const u8 {
    b"Hello C from Rust!\n\0".as_ptr()
}
