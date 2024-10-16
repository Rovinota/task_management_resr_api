import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_management_resr_api/ui/Utils/AppColors.dart';
import 'package:task_management_resr_api/ui/screens/splashscreen.dart';

class TaskManagerApp extends StatefulWidget {
  const TaskManagerApp({super.key});

  @override
  State<TaskManagerApp> createState() => _TaskManagerAppState();
}

class _TaskManagerAppState extends State<TaskManagerApp> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(

          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorSchemeSeed: AppColors.themecolor,
            inputDecorationTheme: _inputDecorationTheme(),
            elevatedButtonTheme: _elevatedButtonThemeData(),

          ),
          home: const SplashScreen()
    );
  }
  InputDecorationTheme _inputDecorationTheme () {
    return  InputDecorationTheme(
      fillColor: Colors.white,
      filled: true,
      hintStyle: const TextStyle(
        fontWeight: FontWeight.w600,
      ),
      border:  _inputBorder(),
      enabledBorder: _inputBorder(),
      focusedBorder: _inputBorder(),
      errorBorder: _inputBorder(),
    );
  }

  OutlineInputBorder _inputBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(8),
    );
  }
  ElevatedButtonThemeData _elevatedButtonThemeData () {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.themecolor,
        foregroundColor: Colors.white,
        fixedSize:  Size.fromWidth(double.maxFinite),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        )
      )
    );
  }
}
