/// name : "amr mustafa"
/// email : "amr222@gmail.com"
/// password : "Amr2510@"
/// confirmPassword : "Amr2510@"
/// phone : "+201141209334"
/// avaterId : 1

class RegisterRequest {
  RegisterRequest({
      String? name,
      String? email,
      String? password,
      String? confirmPassword,
      String? phone,
    int? avaterId,}){
    _name = name;
    _email = email;
    _password = password;
    _confirmPassword = confirmPassword;
    _phone = phone;
    _avaterId = avaterId;
}

  RegisterRequest.fromJson(dynamic json) {
    _name = json['name'];
    _email = json['email'];
    _password = json['password'];
    _confirmPassword = json['confirmPassword'];
    _phone = json['phone'];
    _avaterId = json['avaterId'];
  }
  String? _name;
  String? _email;
  String? _password;
  String? _confirmPassword;
  String? _phone;
 int? _avaterId;
RegisterRequest copyWith({  String? name,
  String? email,
  String? password,
  String? confirmPassword,
  String? phone,
  int? avaterId,
}) => RegisterRequest(  name: name ?? _name,
  email: email ?? _email,
  password: password ?? _password,
  confirmPassword: confirmPassword ?? _confirmPassword,
  phone: phone ?? _phone,
  avaterId: avaterId ?? _avaterId,
);
  String? get name => _name;
  String? get email => _email;
  String? get password => _password;
  String? get confirmPassword => _confirmPassword;
  String? get phone => _phone;
  int? get avaterId => _avaterId;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['email'] = _email;
    map['password'] = _password;
    map['confirmPassword'] = _confirmPassword;
    map['phone'] = _phone;
    map['avaterId'] = _avaterId;
    return map;
  }

}