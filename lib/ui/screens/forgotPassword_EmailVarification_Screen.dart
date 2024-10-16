import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_management_resr_api/ui/Utils/AppColors.dart';
import 'package:task_management_resr_api/ui/widgets/screen_background.dart';

import 'forgot_password_otp_screen.dart';

class forgot_PassWord_Email_Screen extends StatefulWidget {
  const forgot_PassWord_Email_Screen({super.key});

  @override
  State<forgot_PassWord_Email_Screen> createState() => _forgot_PassWord_Email_ScreenState();
}

class _forgot_PassWord_Email_ScreenState extends State<forgot_PassWord_Email_Screen> {
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
                    Text("Your Email Address",
                        style: textTheme.displaySmall
                            ?.copyWith(fontWeight: FontWeight.w500)),
                    SizedBox(
                      height: 20,
                    ),
                    Text("A 6 digit Verification code will send on your Email Address", style: textTheme.titleSmall?.copyWith(color: Colors.grey, fontWeight: FontWeight.bold),),
                    SizedBox(height: 5,),
                    _buildEmailVerifyForm(),
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

  Widget _buildEmailVerifyForm() {
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
        
        ElevatedButton(
            onPressed: onTapNextButton,
            child: Icon(Icons.arrow_circle_right_outlined))
      ],
    );
  }

  void onTapNextButton() {
    Navigator.push(context, MaterialPageRoute(builder: (context)=>forgot_password_otp_screen(),),);
  }

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
