import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:icube_demo/screens/home_screen.dart';

class LoginController extends GetxController {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void validateAndGoToHomeScreen() {
    if (emailController.text.isEmpty) {
      Get.snackbar("Failed", "Email is Required!");
    } else if (passwordController.text.isEmpty) {
      Get.snackbar("Failed", "Password is Required!");
    } else {
      Get.snackbar("Success", "Login Successfully!");
      Get.to(() => HomeScreen(
            userEmail: emailController.text,
            userPassword: passwordController.text,
          ));
    }
  }
}
