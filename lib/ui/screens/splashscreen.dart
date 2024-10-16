import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_management_resr_api/ui/widgets/screen_background.dart';
import 'package:task_management_resr_api/ui/Utils/assets_path.dart';
import 'package:task_management_resr_api/ui/screens/sign_in_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future<void> _movenextScreen() async {
    await Future.delayed(Duration(seconds: 3));
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => SignInScreen()
    )
    );
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _movenextScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ScreenBackground(
            child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                AssetsPath.logosvg,
                width: 150,
              ),
            ],
          ),
        )),
      ),
    );
  }
}
