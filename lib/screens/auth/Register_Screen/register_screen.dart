import 'package:arwa/screens/ProfileScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../colors.dart';
import '../../../custom_bottom_nav.dart';
import '../../../dialog_alert.dart';
import '../Login_screen/login_screen.dart';
import '../user_data.dart';
import '../user_data.dart';
import 'cubit/register_cubit.dart';
import 'cubit/register_state.dart';



class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  RegisterCubit cubit  = RegisterCubit();

  final PageController _pageController = PageController(viewportFraction: 0.4);
  // bool _isPasswordVisible = false;
  // bool _isConfirmPasswordVisible = false;


  @override
  Widget build(BuildContext context) {

    return BlocListener<RegisterCubit,RegisterState>(
        bloc: cubit,
        listener: (context,state) {
      if(state is RegisterLoadingState){
        DialogCode.showLoading(context: context, loading: "Loading");
      }
      else if (state is RegisterErrorState){
        DialogCode.hideloading(context);
        DialogCode.showMessage(context: context, content: state.errorMessage,
            posActName: "Ok" , title: "Error" );

      }else if (state is RegisterSuccessState){
        DialogCode.hideloading(context);
        DialogCode.showMessage(context: context, content: "Register successed",
            posActName: "Ok" , title: "Success",
            posAction: (){
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => CustomBottomNavBar()),
              );
            });
      }
    },
     child : Scaffold(
      backgroundColor: AppColors.black,
      body: SingleChildScrollView(
        child: Form(
          key: cubit.formkey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 50),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => LoginScreen()),
                        );
                      },
                      child: Image.asset(
                        'assets/icons/arrow_left_yellow.png',
                        height: 24,
                      ),
                    ),
                    const Spacer(),
                    const Text(
                      'Register',
                      style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: AppColors.yellow),
                    ),
                    const Spacer(),
                  ],
                ),
                const SizedBox(height: 20),

                // Avatar Selection
                SizedBox(
                  height: 120,
                  child: PageView.builder(
                    controller: _pageController,
                    itemCount: cubit.avaters.length,
                    onPageChanged: (index) {
                      setState(() {
                        cubit.currentAvatarIndex = index;
                      });
                    },
                    itemBuilder: (context, index) {
                      double scale = index == cubit.currentAvatarIndex ? 1.2 : 0.9;

                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            cubit.currentAvatarIndex = index;
                            _pageController.animateToPage(
                              index,
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeInOut,
                            );
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6.0),
                          child: Transform.scale(
                            scale: scale,
                            child: CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage(cubit.avaters[index]),
                              backgroundColor: Colors.transparent,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Avatar',
                  style: TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold, color: AppColors.white),
                ),
                const SizedBox(height: 25),

                UserData(labelText: "Name",
                  controller: cubit.namecontroller,
                  iconPath: 'assets/icons/name.png',
                  validator: (text) {
                    if (text == null || text.trim().isEmpty) {
                      return "PLEASE ENTER UserName";
                    }
                    return null;
                  },
                ),
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
                UserData(labelText: "Confrim Password",
                  controller: cubit.confcontroller,
                  obscureText: true,
                  iconPath: 'assets/icons/pass.png',
                  validator: (text) {
                    if (text == null || text.trim().isEmpty) {
                      return "PLEASE ENTER PASSWORD";
                    }
                    if (text.length < 6) {
                      return "PASSWORD MUST BE AT LEAST 6";
                    }
                    if (text !=cubit. passcontroller.text) {
                      return "CONFIRM PASSWORD MUST MATCH PASSWORD!";
                    }
                    return null;
                  },
                ),
                UserData(labelText: "Phone Number",
                  controller: cubit.mobilecontroller,
                  keyboardtype: TextInputType.phone,
                  iconPath: 'assets/icons/phone.png',
                  validator: (text) {
                    if (text == null || text.trim().isEmpty) {
                      return "PLEASE ENTER Phone Number";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.yellow,
                    minimumSize: const Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  onPressed: () {
                    cubit.register();
    },
                  child: const Text(
                    'Create Account',
                    style: TextStyle(color: AppColors.black, fontSize: 16),
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Already Have an Account? ',
                      style: TextStyle(color: AppColors.white),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => LoginScreen()),
                        );
                      },
                      child: const Text(
                        'Login',
                        style: TextStyle(
                            color: AppColors.yellow,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 10),
                Container(
                  padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.yellow, width: 2),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset('assets/language/EN.png', height: 30),
                      const SizedBox(width: 2),
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

  // Widget _buildTextField(String iconPath, String hintText) {
  //   return Padding(
  //     padding: const EdgeInsets.symmetric(vertical: 8.0),
  //     child: TextFormField(
  //       style: const TextStyle(color: AppColors.white),
  //       decoration: InputDecoration(
  //         prefixIcon: Padding(
  //           padding: const EdgeInsets.all(12),
  //           child: Image.asset(iconPath, height: 24),
  //         ),
  //         hintText: hintText,
  //         hintStyle: const TextStyle(color: Colors.white54),
  //         filled: true,
  //         fillColor: AppColors.darkGrey,
  //         border: OutlineInputBorder(
  //           borderRadius: BorderRadius.circular(15),
  //           borderSide: BorderSide.none,
  //         ),
  //       ),
  //       controller: cubit.namecontroller,
  //     ),
  //   );
  // }

  // Widget _buildPasswordField(String iconPath, String hintText, bool isPassword) {
  //   return Padding(
  //     padding: const EdgeInsets.symmetric(vertical: 8.0),
  //     child: TextField(
  //       obscureText: isPassword ? !_isPasswordVisible : !_isConfirmPasswordVisible,
  //       style: const TextStyle(color: AppColors.white),
  //       decoration: InputDecoration(
  //         prefixIcon: Padding(
  //           padding: const EdgeInsets.all(12),
  //           child: Image.asset(iconPath, height: 24),
  //         ),
  //         suffixIcon: IconButton(
  //           icon: Icon(
  //             isPassword
  //                 ? (_isPasswordVisible ? Icons.visibility : Icons.visibility_off)
  //                 : (_isConfirmPasswordVisible ? Icons.visibility : Icons.visibility_off),
  //             color: AppColors.white,
  //           ),
  //           onPressed: () {
  //             setState(() {
  //               if (isPassword) {
  //                 _isPasswordVisible = !_isPasswordVisible;
  //               } else {
  //                 _isConfirmPasswordVisible = !_isConfirmPasswordVisible;
  //               }
  //             });
  //           },
  //         ),
  //         hintText: hintText,
  //         hintStyle: const TextStyle(color: Colors.white54),
  //         filled: true,
  //         fillColor: AppColors.darkGrey,
  //         border: OutlineInputBorder(
  //           borderRadius: BorderRadius.circular(15),
  //           borderSide: BorderSide.none,
  //         ),
  //       ),
  //     ),
  //   );
  // }
}