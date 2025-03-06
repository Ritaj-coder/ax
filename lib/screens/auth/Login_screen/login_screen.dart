import 'package:arwa/screens/auth/Login_screen/cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../colors.dart';
import '../../../custom_bottom_nav.dart';
import '../../../dialog_alert.dart';
import '../../ProfileScreen.dart';
import '../../forget_password_screen.dart';
import '../Register_Screen/register_screen.dart';
import '../user_data.dart';
import 'cubit/login_state.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isPasswordVisible = false;
  LoginCubit cubit = LoginCubit();

  @override
  Widget build(BuildContext context) {
    return BlocListener(
        bloc: cubit,
        listener: (context,state){
      if(state is LoginLoadingState){
        DialogCode.showLoading(context: context, loading: "Waiting");
      }
      else if (state is LoginErrorState){
        DialogCode.hideloading(context);
        DialogCode.showMessage(context: context, content: state.errorMessage,
            posActName: "Ok" , title: "Error" );

      }else if (state is LoginSuccessState){
        DialogCode.hideloading(context);
        DialogCode.showMessage(context: context, content: "Login successed",
            posActName: "Ok" , title: "Success",
            posAction: (){
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => CustomBottomNavBar()),
              );            });
      }
    },
      child : Scaffold(
      backgroundColor: AppColors.black,
      body: Form(
      key: cubit.formkey,
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Image.asset('assets/app.png', height: 80),

                SizedBox(height: 24),
                UserData(labelText: "Email",
                  controller: cubit.emailcontroller,
                  keyboardtype: TextInputType.emailAddress,
                  iconPath: 'assets/icons/email.png',
                  validator: (text) {
                    if (text == null || text.trim().isEmpty) {
                      return "PLEASE ENTER EMAIL";
                    }
                    final bool emailvalid = RegExp(
                        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                        .hasMatch(cubit.emailcontroller.text);
                    if (!emailvalid) {
                      return "PLEASE ENTER VALID EMAIL";
                    }
                    return null;
                  },
                ),

                UserData(labelText: "Password",
                  controller: cubit.passcontroller,
                  obscureText: true,
                  iconPath: 'assets/icons/pass.png',
                  validator: (text) {
                    if (text == null || text.trim().isEmpty) {
                      return "PLEASE ENTER PASSWORD";
                    }
                    if (text.length < 6) {
                      return "PASSWORD MUST BE AT LEAST 6";
                    }
                    return null;
                  },
                ),

                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ForgetPasswordScreen()),
                      );
                    },
                    child: Text(
                      'Forget Password ?',
                      style: TextStyle(color: AppColors.yellow),
                    ),
                  ),
                ),
                SizedBox(height: 12),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      cubit.login();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.yellow,
                      padding: EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: AppColors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't Have an Account?", style: TextStyle(color: AppColors.white)),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => RegisterScreen()),
                        );
                      },
                      child: Text(
                        "Create One",
                        style: TextStyle(
                          color: AppColors.yellow,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(child: Divider(color: AppColors.yellow, thickness: 1, endIndent: 10)),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 3),
                      child: Text(
                        "OR",
                        style: TextStyle(
                          color: AppColors.yellow,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Expanded(child: Divider(color: AppColors.yellow, thickness: 1, indent: 10)),
                  ],
                ),
                SizedBox(height: 12),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: Image.asset('assets/icons/google.png', height: 24),
                    label: Text(
                      'Login With Google',
                      style: TextStyle(
                        color: AppColors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.yellow,
                      padding: EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 12),
                Container(
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.yellow, width: 2),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset('assets/language/EN.png', height: 30),
                      SizedBox(width: 2),
                      Image.asset('assets/language/EG.png', height: 30),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}