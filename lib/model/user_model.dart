// ignore_for_file: non_constant_identifier_names, empty_constructor_bodies

class User {
  String id;
  String email;
  String password;
  String? name;
  String? phone;

  User({
    required this.id,
    required this.email,
    required this.password,
    this.phone,
    this.name,
  });
  User.from({
    required this.id,
    required this.email,
    required this.password,
    this.phone,
    this.name,
  });

  User.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        email = json['email'],
        password = json['password'],
        name = json['name'],
        phone = json['phone'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'name': name,
        'phone': phone,
        'password': password
      };
}
