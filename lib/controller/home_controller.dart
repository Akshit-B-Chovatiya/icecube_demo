import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class HomeController extends GetxController {

  RxString email = "".obs;
  RxString password = "".obs;

  void setData({required String userEmail,required String userPassword}){
    email.value = userEmail;
    password.value = userPassword;
  }
}