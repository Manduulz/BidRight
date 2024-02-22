import 'package:flutter/material.dart';
import 'package:bid_right_mobile/util/theme.dart';



class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(60.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: BRColors.bglightBlue,
      foregroundColor: BRColors.fnligtBlack,
      elevation: 0,
    );
  }
}