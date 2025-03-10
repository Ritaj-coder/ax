/// message : "User created successfully"
/// data : {"email":"amr222@gmail.com","password":"$2b$10$TLT0f1mBS2Bhkf0/Irxlmunf5fTPZNZ8CVuDn2q5/V1hvExFufbxm","name":"amr mustafa","phone":"+201141209334","avaterId":1,"_id":"67c098141e1713fe13fc8342","createdAt":"2025-02-27T16:51:32.437Z","updatedAt":"2025-02-27T16:51:32.437Z","__v":0}

class RegisterResponse {
  RegisterResponse({
      String? message,
      Data? data,}){
    _message = message;
    _data = data;
}

  RegisterResponse.fromJson(dynamic json) {
    _message = json['message'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  String? _message;
  Data? _data;
RegisterResponse copyWith({  String? message,
  Data? data,
}) => RegisterResponse(  message: message ?? _message,
  data: data ?? _data,
);
  String? get message => _message;
  Data? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['message'] = _message;
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    return map;
  }

}

/// email : "amr222@gmail.com"
/// password : "$2b$10$TLT0f1mBS2Bhkf0/Irxlmunf5fTPZNZ8CVuDn2q5/V1hvExFufbxm"
/// name : "amr mustafa"
/// phone : "+201141209334"
/// avaterId : 1
/// _id : "67c098141e1713fe13fc8342"
/// createdAt : "2025-02-27T16:51:32.437Z"
/// updatedAt : "2025-02-27T16:51:32.437Z"
/// __v : 0

class Data {
  Data({
      String? email, 
      String? password, 
      String? name, 
      String? phone,
   int? avaterId,
      String? id, 
      String? createdAt, 
      String? updatedAt,
      num? v,}){
    _email = email;
    _password = password;
    _name = name;
    _phone = phone;
    _avaterId = avaterId;
    _id = id;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _v = v;
}

  Data.fromJson(dynamic json) {
    _email = json['email'];
    _password = json['password'];
    _name = json['name'];
    _phone = json['phone'];
    _avaterId = json['avaterId'];
    _id = json['_id'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _v = json['__v'];
  }
  String? _email;
  String? _password;
  String? _name;
  String? _phone;
  int? _avaterId;
  String? _id;
  String? _createdAt;
  String? _updatedAt;
  num? _v;
Data copyWith({  String? email,
  String? password,
  String? name,
  String? phone,
 int? avaterId,
  String? id,
  String? createdAt,
  String? updatedAt,
  num? v,
}) => Data(  email: email ?? _email,
  password: password ?? _password,
  name: name ?? _name,
  phone: phone ?? _phone,
  avaterId: avaterId ?? _avaterId,
  id: id ?? _id,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
  v: v ?? _v,
);
  String? get email => _email;
  String? get password => _password;
  String? get name => _name;
  String? get phone => _phone;
 int? get avaterId => _avaterId;
  String? get id => _id;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  num? get v => _v;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['email'] = _email;
    map['password'] = _password;
    map['name'] = _name;
    map['phone'] = _phone;
    map['avaterId'] = _avaterId;
    map['_id'] = _id;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    map['__v'] = _v;
    return map;
  }

}