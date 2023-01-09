import 'package:flutter/material.dart';

import '../config/app_colors.dart';

class ButtonView extends StatelessWidget {
  const ButtonView({
    Key? key,
    required this.title,
    required this.onPressed,
    this.iconView,
  }) : super(key: key);

  final String title;
  final Function() onPressed;
  final Widget? iconView;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(50),
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), color: AppColors.buttonColor,
        boxShadow: [
          BoxShadow(
            color: AppColors.blackColor.withOpacity(0.3),
            blurRadius: 6,
            spreadRadius: 1,
            offset: const Offset(0, 5)
          )
        ]),
        padding: const EdgeInsets.symmetric(vertical: 13),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            iconView != null ? iconView! : Container(),
            Text(
              title,
              style: const TextStyle(color: AppColors.whiteColor, fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
