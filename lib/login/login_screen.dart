import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:new_face_book/home/home_screen.dart';
import 'package:new_face_book/login/elevated_button_widget.dart';
import 'package:new_face_book/login/text_field.dart';
import 'package:new_face_book/style/app_color.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = 'LoginScreen';

  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  bool isPasswordVisible = false;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColor.whiteAppColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Form(
            key: _formKey,
            child: Column(
              spacing: 20,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      spacing: 20,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Center(
                          child: Image.asset(
                            'assets/images/app_rounded_logo.png',
                            width: 100,
                            height: 100,
                          ),
                        ),

                        // Email or Mobile Number
                        TextFieldClass(
                          hintData: 'Mobile Number or Email Address',
                          inputType: TextInputType.emailAddress,
                          controller: emailController,
                          validator: (value) {
                            if (value == null || value.trim().isEmpty) {
                              return 'Please enter your email or mobile number';
                            }

                            final input = value.trim();

                            final isEmail = EmailValidator.validate(input);

                            final isPhone = RegExp(r'^\+?[0-9]{10,15}$')
                                .hasMatch(input);

                            if (!isEmail && !isPhone) {
                              return 'Invalid Email';
                            }

                            return null;
                          },
                        ),

                        // Password
                        TextFieldClass(
                          hintData: 'Password',
                          inputType: TextInputType.visiblePassword,
                          scuretext: !isPasswordVisible,
                          suffixIconEye: IconButton(
                            onPressed: () {
                              setState(() {
                                isPasswordVisible = !isPasswordVisible;
                              });
                            },
                            icon: Icon(
                              isPasswordVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
                          ),
                          controller: passwordController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your password';
                            }

                            if (value.length < 8) {
                              return 'Password must be at least 8 characters';
                            }

                            if (!RegExp(r'[A-Z]').hasMatch(value)) {
                              return 'Password must contain an uppercase letter';
                            }

                            if (!RegExp(r'[a-z]').hasMatch(value)) {
                              return 'Password must contain a lowercase letter';
                            }

                            if (!RegExp(r'[0-9]').hasMatch(value)) {
                              return 'Password must contain a number';
                            }

                            if (!RegExp(r'[!@#$%^&*(),.?":{}|<>_\-+=\[\]\\/~`]')
                                .hasMatch(value)) {
                              return 'Password must contain a special character';
                            }

                            return null;
                          },
                        ),

                        // Login Button
                        ElevatedButtonWidget(
                          data: 'Login',
                          elevatedOnPressed: () {
                            final isValid = _formKey.currentState!.validate();

                            if (isValid) {
                              FocusScope.of(context).unfocus();

                              Navigator.pushReplacementNamed(
                                context,
                                HomeScreen.routeName,
                              );
                            }
                          },
                        ),

                        // Forgotten Password ?
                        Align(
                          alignment: Alignment.center,
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'Forgotten Password ?',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: AppColor.grayAppColor,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // Create Account
                ElevatedButtonWidget(
                  data: 'Create Account',
                  elevatedBackgroundColor: AppColor.whiteAppColor,
                  elevatedTextColor: AppColor.blueAppColor,
                  elevatedSide: BorderSide(color: AppColor.blueAppColor),
                  elevatedOnPressed: () {},
                ),

                // MetaImage
                Image.asset(
                  'assets/images/meta_logo.png',
                  width: 98,
                  height: 40,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
