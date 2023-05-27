module 0x42::bai7 {
	//use std::vector;
	struct Person has drop { age: u8, name: vector<u8> }
	public fun tao_struct(): Person {
		let person = Person { age: 18, name: b"HieuVo" };	
		let ref: &mut u8 = &mut person.age;
		*ref = 19;
		person
	}
	#[test]
	fun test_person() {
		let person = tao_struct();
		assert!(person.age == 18u8, 0);
		assert!(person.name == b"HieuVo", 1);
	}
}
