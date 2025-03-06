/// message : "Success Login"
/// data : "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY3YjkwYzRiZjFkZGFjMWRhYzEzMDYwNCIsImVtYWlsIjoiYW1yMkBnbWFpbC5jb20iLCJpYXQiOjE3NDA2NzU5ODZ9.45JVmysPYUTnZ7VGUjBcE1TEIhrtJ25tN9HGCHL_ztg"

class LoginResponse {
  LoginResponse({
      String? message, 
      String? data,}){
    _message = message;
    _data = data;
}

  LoginResponse.fromJson(dynamic json) {
    _message = json['message'];
    _data = json['data'];
  }
  String? _message;
  String? _data;
LoginResponse copyWith({  String? message,
  String? data,
}) => LoginResponse(  message: message ?? _message,
  data: data ?? _data,
);
  String? get message => _message;
  String? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['message'] = _message;
    map['data'] = _data;
    return map;
  }

}