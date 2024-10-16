import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:task_management_resr_api/ui/Utils/AppColors.dart';
import 'package:task_management_resr_api/ui/screens/sign_in_screen.dart';
import 'package:task_management_resr_api/ui/widgets/screen_background.dart';

class forgot_password_otp_screen extends StatefulWidget {
  const forgot_password_otp_screen({super.key});

  @override
  State<forgot_password_otp_screen> createState() => _forgot_password_otp_screenState();
}

class _forgot_password_otp_screenState extends State<forgot_password_otp_screen> {
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
                    Text("Pin Verification",
                        style: textTheme.displaySmall
                            ?.copyWith(fontWeight: FontWeight.w500)),
                    SizedBox(
                      height: 20,
                    ),
                    Text("A 6 digit Verification code has been  send on your Email Address", style: textTheme.titleSmall?.copyWith(color: Colors.grey, fontWeight: FontWeight.bold),),
                    SizedBox(height: 5,),
                    _buildOTPVerifyForm(),
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

  Widget _buildOTPVerifyForm() {
    return Column(
      children: [
        PinCodeTextField(
          length: 6,
          animationType: AnimationType.scale,
          keyboardType: TextInputType.number,
          pinTheme: PinTheme(
            shape: PinCodeFieldShape.box,
            borderRadius: BorderRadius.circular(5),
            fieldHeight: 50,
            fieldWidth: 40,
            activeFillColor: Colors.white,
            inactiveFillColor: Colors.white,
            selectedFillColor: Colors.white,
          ),
          animationDuration: const Duration(milliseconds: 300),
          backgroundColor: Colors.transparent,
          enableActiveFill: true,
          appContext: context,
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
