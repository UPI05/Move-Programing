module 0x42::bai6 {
	public fun get_price(age: u16): u16 {
		let price = if (age >= 18) 40000u16 else 20000u16;
		price
	}
	#[test]
	fun test_get_price() {
		let price = get_price(10);

		if (price != 40000u16) abort 42;
	}
}
