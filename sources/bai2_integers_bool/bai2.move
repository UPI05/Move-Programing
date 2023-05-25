module 0x42::integers {
	//public fun calc(): u256 {
		//let a = 1u16;
		//let b = 3u256;
		//let _c: u128 = 35;
		//let _d: u256 = 0xDEADBEEF;
		//let _check: bool = true;
		//(a as u256) + b
	//}
	public fun add(a: u16, b: u16): u16 {
		a + b
	}
	#[test]
	fun test_add() {
		let a = 5u16;
		let b = 10u16;
		let sum = add(a, b);
		assert!(sum == a + b, 0);
	}
}
