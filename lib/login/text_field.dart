import 'package:flutter/material.dart';
import 'package:new_face_book/style/app_color.dart';

class TextFieldClass extends StatelessWidget {
  String hintData;
  TextInputType inputType;
  TextEditingController controller;
  String? Function(String?)? validator;
  bool scuretext;

  Widget? suffixIconEye;

  TextFieldClass({
    required this.controller,
    this.validator,
    required this.hintData,
    required this.inputType,
    this.suffixIconEye,
    this.scuretext = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      cursorColor: AppColor.blueAppColor,
      obscureText: scuretext,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
        suffixIcon: suffixIconEye,
        filled: true,
        fillColor: AppColor.whiteAppColor,
        hintStyle: TextStyle(
          color: AppColor.grayAppColor,
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
        hintText: hintData,

        contentPadding: const EdgeInsets.all(16),

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: AppColor.grayAppColor, width: 2),
        ),

        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: AppColor.redAppColor, width: 2),
        ),
      ),

      keyboardType: inputType,
    );
  }
}
