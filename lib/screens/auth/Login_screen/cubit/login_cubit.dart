
import 'package:arwa/data/api_data.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit():super(LoginInitialState());

  ///todo: hold data -- handle logic
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passcontroller = TextEditingController();
  var formkey = GlobalKey<FormState>();

  bool isObscure = true ;

  Future<void> login() async {
    if(formkey.currentState?.validate() == true){
      try {
        emit(LoginLoadingState());
        var response = await ApIManager.login(
            emailcontroller.text, passcontroller.text);

        if (response.message == 'User does not exist') {
          emit(LoginErrorState(errorMessage: response.message!));
        }
        else {
          emit(LoginSuccessState(successMessage: response));
        }
      }
      catch(e){
        emit(LoginErrorState(errorMessage: e.toString()));
      }

    }
  }
}