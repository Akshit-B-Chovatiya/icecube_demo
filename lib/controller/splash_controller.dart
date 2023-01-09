import 'package:get/get.dart';
import 'package:icube_demo/screens/login_screen.dart';
import 'package:icube_demo/screens/splash_screen.dart';

class SplashController extends GetxController {
  void checkAuthStatus() {
    Future.delayed(const Duration(seconds: 0), () {
      Get.off(()=>const LoginScreen());
    });
  }
}
