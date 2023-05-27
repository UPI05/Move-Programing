module 0x42::bai9 {
	public fun vonglap_loop(): u16 {
		let sum = 0u16;
		let i = 0u16;
		loop {
			if (i > 3) break;
			sum = sum + i;
			i = i + 1;
		};
		sum
	}
	public fun vonglap(): u16 {
		let sum = 0u16;
		let i = 0u16;
		while (i <= 3) {
			sum = sum + i;
			i = i + 1;
		};

		sum
	}
	#[test]
	fun test_vonglap() {
		let sum = vonglap();
		assert!(sum == 6u16, 0);
	}
	#[test]
	fun test_vonglap_loop() {
		let sum = vonglap_loop();
		assert!((sum == 6u16), 1);
	}

}
