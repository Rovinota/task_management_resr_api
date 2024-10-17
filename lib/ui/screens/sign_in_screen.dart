import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_management_resr_api/ui/Utils/AppColors.dart';
import 'package:task_management_resr_api/ui/screens/main_bottom_nav_bar_screen.dart';
import 'package:task_management_resr_api/ui/widgets/screen_background.dart';
import 'Sign_in_up_Screen.dart';
import 'forgotPassword_EmailVarification_Screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: SafeArea(
        child: ScreenBackground(
            child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                const SizedBox(
                  height: 82,
                ),
                Text("Get Started With",
                    style: textTheme.displaySmall
                        ?.copyWith(fontWeight: FontWeight.w500)),
                SizedBox(
                  height: 20,
                ),
                _buildSignInForm(),
                Center(
                  child: Column(
                    children: [
                      TextButton(
                        onPressed: _onTapForgetPasswordButton,
                        child: Text(
                          "Forget Password",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      _buildSignUpSection(),
                    ],
                  ),
                )
              ],
            ),
          ),
        )),
      ),
    );
  }

  Widget _buildSignInForm() {
    return Column(
      children: [
        TextFormField(
          keyboardType: TextInputType.emailAddress,
          decoration: const InputDecoration(
            hintText: "Email",
          ),
        ),
        SizedBox(
          height: 10,
        ),
        TextFormField(
          keyboardType: TextInputType.text,
          decoration: const InputDecoration(
            hintText: "Password",
          ),
        ),
        SizedBox(
          height: 10,
        ),
        ElevatedButton(
            onPressed: onTapNextButton,
            child: Icon(Icons.arrow_circle_right_outlined))
      ],
    );
  }

  void onTapNextButton() {
    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>MainBottomNavBarScreen()), (predicate)=>false);
  }

  void _onTapForgetPasswordButton() {
    Navigator.push(context, MaterialPageRoute(builder: (context)=>forgot_PassWord_Email_Screen(),),);
  }

  void _onTapSignUpButton() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen(),),);
  }

  Widget _buildSignUpSection() {
    return RichText(text: TextSpan(
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w600,
        fontSize: 14,
        letterSpacing: 0.5,
      ),
      text: "Don't Have a Account? ",
        children: [
          TextSpan(
            text: "Sign up",
            style: TextStyle(color: AppColors.themecolor),
            recognizer: TapGestureRecognizer()..onTap = _onTapSignUpButton,
          )
        ]
    ),);
  }
}
