import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:icube_demo/config/app_colors.dart';
import 'package:icube_demo/controller/splash_controller.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SplashController controller = Get.put(SplashController());

  @override
  void initState() {
    controller.checkAuthStatus();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Splash Screen", style: TextStyle(color: AppColors.redColor, fontSize: 20)),
      ),
    );
  }
}
