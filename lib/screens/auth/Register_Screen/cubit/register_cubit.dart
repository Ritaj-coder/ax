

import 'package:arwa/data/api_data.dart';
import 'package:arwa/screens/auth/Register_Screen/cubit/register_state.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class RegisterCubit extends Cubit<RegisterState>{
  RegisterCubit():super(RegisterInitialState());

  ///todo: hold data -- handle logic
  TextEditingController namecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passcontroller = TextEditingController();
  TextEditingController mobilecontroller = TextEditingController();
  TextEditingController confcontroller = TextEditingController();
  var formkey = GlobalKey<FormState>();
  bool isObscure = true ;

  final List<String> avaters =
  List.generate(9, (index) => 'assets/profiles/user${index + 1}.png');

  int currentAvatarIndex = 0;

  Future<void> register() async {
    if (formkey.currentState?.validate() == true) {
      try {
        emit(RegisterLoadingState());
        var response = await ApIManager.register(
            namecontroller.text, emailcontroller.text,
            passcontroller.text, confcontroller.text, mobilecontroller.text,
            currentAvatarIndex + 1

          );
        if (response.message != null && response.message == "User already exist") {
          emit(RegisterErrorState(errorMessage: response.message!));
        }
        else {
          emit(RegisterSuccessState(successMessage: response));
        }
      } catch (e) {
        emit(RegisterErrorState(errorMessage: e.toString()));
      }
    }
  }
}