import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:icube_demo/config/app_colors.dart';
import 'package:icube_demo/config/app_images.dart';
import 'package:icube_demo/controller/login_controller.dart';
import 'package:icube_demo/widgets/button_view.dart';
import 'package:icube_demo/widgets/divider_view.dart';
import 'package:icube_demo/widgets/textfiled_view.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blueColor,
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Login", style: TextStyle(color: AppColors.whiteColor, fontSize: 26)),
              const SizedBox(height: 15),
              TextFieldView(
                controller: controller.emailController,
                hintText: 'Enter Email',
                tagText: "Email",
              ),
              const SizedBox(height: 15),
              TextFieldView(
                controller: controller.passwordController,
                hintText: "Enter Password",
                tagText: "Senha",
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(child: ButtonView(title: "Entrar", onPressed: () {})),
                  const SizedBox(width: 15),
                  Expanded(child: ButtonView(title: "Register", onPressed: () {})),
                ],
              ),
              const OrDividerView(),
              ButtonView(
                title: "Enter com Google",
                onPressed: () {
                  controller.validateAndGoToHomeScreen();
                },
                iconView: Container(
                  margin: const EdgeInsets.only(right: 10),
                  child: Image.asset(AppImages.googleIcon, height: 20, width: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
