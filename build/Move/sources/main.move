script {
	use 0x42::SocialNetwork;

	fun main() {
		let age: u8 = 15;
		SocialNetwork::set_age(age);
	}

}
