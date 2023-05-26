module 0x42::bai4 {
	public fun ref(): u8 {
		let a: u8 = 10;
		let b: &mut u8 = &mut a;
		freeze(b);
		*b = 5u8;
		a
	}
	#[test]
	fun test_ref() {
		let a = ref();
		assert!(a == 5u8, 0);
	}
}
