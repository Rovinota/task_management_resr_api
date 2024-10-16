import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_management_resr_api/ui/Utils/AppColors.dart';
import 'package:task_management_resr_api/ui/widgets/screen_background.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
                Text("Join With us",
                    style: textTheme.displaySmall
                        ?.copyWith(fontWeight: FontWeight.w500)),
                SizedBox(
                  height: 20,
                ),
                _buildSignUpForm(),
                SizedBox(height: 5,),
                Center(
                  child: Column(
                    children: [
                      _buildSigninSection(),
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

  Widget _buildSignUpForm() {
    return Column(
      children: [
        TextFormField(
          decoration: const InputDecoration(
            hintText: "Email",
          ),
        ),
        SizedBox(
          height: 10,
        ),
        TextFormField(
          decoration: const InputDecoration(
            hintText: "First Name",
          ),
        ),
        SizedBox(
          height: 10,
        ),
        TextFormField(
          decoration: const InputDecoration(
            hintText: "Last Name",
          ),
        ),
        SizedBox(
          height: 10,
        ),
        TextFormField(
          decoration: const InputDecoration(
            hintText: "Phone",
          ),
        ),
        SizedBox(
          height: 10,
        ),
        TextFormField(
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

  void onTapNextButton() {}

  void _onTapForgetPasswordButton() {}
  void _onTapSignInButton() {
    Navigator.pop(context);
  }

  Widget _buildSigninSection() {
    return RichText(
      text: TextSpan(
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 14,
            letterSpacing: 0.5,
          ),
          text: "Have a Account? ",
          children: [
            TextSpan(
              text: "Sign in",
              style: TextStyle(color: AppColors.themecolor),
              recognizer: TapGestureRecognizer()..onTap = _onTapSignInButton,
            )
          ]),
    );
  }
}
