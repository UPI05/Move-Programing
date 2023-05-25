module 0x42::vt {
	use std::vector;	
	public fun test_vector(): vector<u8> {
		let v = vector::singleton<u8>(5u8);		
		v
	}
	public fun test_vector_2(): vector<u8> {
		let v = (vector[0u8, 1u8, 2u8]: vector<u8>);
		v
	}
	public fun test_vector_3() {
		let v = vector::empty<u8>();

	}
	#[test]
	fun test_vt() {
		let vt = vector::empty<u8>();
		let v = test_vector();
		vector::push_back(&mut vt, 5u8);
		assert!(v == vt, 0) 
	}
	#[test]
	fun test_vt2() {
		let v = test_vector_2();
		vector::reverse(&mut v);	
		let vt = (vector[2u8, 1u8, 0u8]: vector<u8>);
		assert!(v == vt, 0);
	}
}
