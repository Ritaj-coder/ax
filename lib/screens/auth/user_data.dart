import 'package:flutter/material.dart';

import '../../colors.dart';

class UserData extends StatelessWidget {
String iconPath ;
 String labelText ;
 TextEditingController controller;
 TextInputType keyboardtype;
 bool obscureText;
 String? Function(String?) validator;
 UserData({required this.labelText , required this.controller ,
 required this.validator , this.keyboardtype = TextInputType.text,
 this.obscureText = false, required this.iconPath});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
        style: const TextStyle(color: AppColors.white),
        decoration: InputDecoration(
          prefixIcon: Padding(
            padding: const EdgeInsets.all(12),
            child: Image.asset(iconPath, height: 24),
          ),
          hintText: labelText,
          hintStyle: const TextStyle(color: Colors.white54),
          filled: true,
          fillColor: AppColors.darkGrey,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide.none,
          ),
        ),

      controller: controller,
      keyboardType: keyboardtype,
      obscureText: obscureText,
      validator: validator,
      )
    );

  }
}
