import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_management_resr_api/ui/Utils/AppColors.dart';
import 'package:task_management_resr_api/ui/screens/sign_in_screen.dart';
import 'package:task_management_resr_api/ui/widgets/screen_background.dart';

import 'forgot_password_otp_screen.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
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
                    Text("Set New password",
                        style: textTheme.displaySmall
                            ?.copyWith(fontWeight: FontWeight.w500)),
                    SizedBox(
                      height: 20,
                    ),
                    Text("Password Should be 8 Characters.", style: textTheme.titleSmall?.copyWith(color: Colors.grey, fontWeight: FontWeight.bold),),
                    SizedBox(height: 5,),
                    _buildResetPasswordForm(),
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

  Widget _buildResetPasswordForm() {
    return Column(
      children: [
        TextFormField(
          keyboardType: TextInputType.text,
          decoration: const InputDecoration(
            hintText: "Password",
          ),
        ),
        SizedBox(
          height: 10,
        ),
        TextFormField(
          keyboardType: TextInputType.text,
          decoration: const InputDecoration(
            hintText: "Confirm Password",
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
    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>SignInScreen(),), (_)=>false);
  }

  void _onTapSignInButton() {
    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>SignInScreen(),), (_)=>false);
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
