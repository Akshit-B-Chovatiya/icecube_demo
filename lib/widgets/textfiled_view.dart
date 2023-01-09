import 'package:flutter/material.dart';
import 'package:icube_demo/config/app_colors.dart';

class TextFieldView extends StatelessWidget {
  const TextFieldView({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.tagText,
  }) : super(key: key);

  final TextEditingController controller;
  final String hintText;
  final String tagText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            padding: const EdgeInsets.only(left: 15, bottom: 10),
            child: Text(tagText, style: const TextStyle(color: AppColors.whiteColor, fontSize: 15))),
        TextFormField(
          controller: controller,
          cursorColor: AppColors.blueColor,
          decoration: InputDecoration(
            hintText: hintText,
            fillColor: AppColors.whiteColor,
            filled: true,
            contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: const BorderSide(color: AppColors.transparentColor)),
            focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: const BorderSide(color: AppColors.transparentColor)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: const BorderSide(color: AppColors.transparentColor)),
            errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: const BorderSide(color: AppColors.transparentColor)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: const BorderSide(color: AppColors.transparentColor)),
            disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: const BorderSide(color: AppColors.transparentColor)),
          ),
        ),
      ],
    );
  }
}
