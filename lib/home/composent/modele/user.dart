class User {
  final String email;
  final String password;
  final String fullname;

  User({required this.email, required this.password, required this.fullname});
}

List<User> users = [
  User(email: "fezaiala@gmail.com", password: "azerty", fullname: "Ala fezai"),
  User(
      email: "AhmedBenHouria@gmail.com",
      password: "12345",
      fullname: "Ahmed ben houria"),
];
