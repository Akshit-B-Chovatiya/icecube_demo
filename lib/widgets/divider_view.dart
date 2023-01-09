import 'package:flutter/material.dart';
import 'package:icube_demo/config/app_colors.dart';

class OrDividerView extends StatelessWidget {
  const OrDividerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        children: [
          Expanded(
              child: Container(
            width: double.infinity,
            height: 1,
            color: AppColors.whiteColor.withOpacity(0.5),
          )),
          const SizedBox(
            width: 10,
          ),
          const Text(
            "or",
            style: TextStyle(color: AppColors.whiteColor, fontSize: 18),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
              child: Container(
            width: double.infinity,
            height: 1,
            color: AppColors.whiteColor.withOpacity(0.5),
          )),
        ],
      ),
    );
  }
}
