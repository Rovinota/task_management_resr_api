import 'package:flutter/material.dart';
import 'package:task_management_resr_api/ui/screens/sign_in_screen.dart';

import '../Utils/AppColors.dart';

class TmAppbar extends StatelessWidget implements PreferredSize {
  const TmAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.themecolor,
      title: Row(
        children: [
          const CircleAvatar(
            child: Icon(Icons.person),
            radius: 16,
            backgroundColor: Colors.white,
          ),
          const SizedBox(
            width: 16,
          ),
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Md. Tanvir Ahmmed",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "tanvir@gmail.com",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          IconButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignInScreen(),
                    ),
                    (predicate) => false);
              },
              icon: Icon(Icons.logout))
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  // TODO: implement child
  Widget get child => throw UnimplementedError();

  BuildContext? get context => null;
}
