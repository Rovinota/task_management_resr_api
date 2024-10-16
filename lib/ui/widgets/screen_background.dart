import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_management_resr_api/ui/Utils/assets_path.dart';

class ScreenBackground extends StatelessWidget {
  const ScreenBackground({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    Size screensize = MediaQuery.sizeOf(context);
    return Stack(
        children: [
          SvgPicture.asset(
            AssetsPath.backgroundsvg,
            fit: BoxFit.cover,
            height: screensize.height,
            width: screensize.width,
          ),
          SafeArea(child: child),
        ],
      );
  }
}
