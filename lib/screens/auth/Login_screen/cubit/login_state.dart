


import '../../../../data/model/Response/LoginResponse.dart';

class LoginState {}

class LoginInitialState extends LoginState {}

class LoginLoadingState extends LoginState {}

class LoginSuccessState extends LoginState {
  LoginResponse successMessage ;

  LoginSuccessState({required this.successMessage});
}
class LoginErrorState extends LoginState {
  String errorMessage ;
  LoginErrorState({required this.errorMessage});
}
