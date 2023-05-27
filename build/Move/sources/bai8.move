address 0x42 {
	module bai8 {		
		use 0x42::test_bai8;
		public fun add(a: u16, b: u16): u16 {
			a + b
		}
		#[test]
		fun test_add() {
			let sum = add(7u16, 3u16);
			assert!(sum == 10u16, 0);

		}
		#[test]
		fun test_sub() {
			let val = test_bai8::sub(10u16, 2u16);
			assert!(val == 8u16, 1);
		}
	}
	module test_bai8 {
		friend 0x42::bai8;
		public(friend) fun sub(a: u16, b: u16): u16 {
			let res = if (a >= b) a - b else 0;
			res
		}
	}
}
