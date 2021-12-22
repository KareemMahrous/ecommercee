class UserData{
  String name;
  String email;
  String password;

  UserData({
    required this.name,
    required this.email,
    required this.password,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': this.name,
      'email': this.email,
      'password': this.password,
    };
  }

  factory UserData.fromMap(Map<String, dynamic> map) {
    return UserData(
      name: map['name'] as String,
      email: map['email'] as String,
      password: map['password'] as String,
    );
  }
}