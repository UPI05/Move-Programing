module 0x42::bai10 {
	public fun ret_struct<T>(a: T): Person<T>{
		Person<T> {
			age: a
		}
	}
	struct Person<age_type> has drop {
		age: age_type
	}
	public fun generic() {
		let _person = Person<u8> {
			age: 18
		};
		let _person2 = Person<u64> {
			age: 80
		};
	}
	#[test]
	fun test_struct() {
		let st = ret_struct<u8>(10u8);
		let st2 = ret_struct<u64>(100000u64);
		assert!(st.age == 10u8, 0);
		assert!(st2.age == 100000u64, 1);
	}
}
