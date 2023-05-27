module 0x42::bai5 {
	public fun tp(): (u8, bool, u16) {
		let (a, b, c) : (u8, bool, u16) = (4, true, 100);
		(a, b, c)	
	}
	#[test]
	fun test_tp() {
		let (a, b, c) = tp();
		let (d, e, f): (u8, bool, u16) = (4, true, 100);
		assert!(a == d, 0);
		assert!(b == e, 0);
		assert!(c == f, 0);
	}
}
