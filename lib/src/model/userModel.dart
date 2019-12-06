class User {
  String email;
  String name;
  String username;
  String pass;

  User({this.email, this.name, this.username, this.pass});

  User.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    name = json['name'];
    username = json['username'];
    pass = json['pass'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['email'] = this.email;
    data['name'] = this.name;
    data['username'] = this.username;
    data['pass'] = this.pass;
    return data;
  }
}