import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:icube_demo/controller/home_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
    required this.userEmail,
    required this.userPassword,
  }) : super(key: key);

  final String userEmail;
  final String userPassword;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeController controller = Get.put(HomeController());

  @override
  void initState() {
    controller.setData(userEmail: widget.userEmail, userPassword: widget.userPassword);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text("Home"),
      ),
      body: Obx(() => Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Email : ${controller.email.value}"),
                Text("Password : ${controller.password.value}"),
              ],
            ),
          )),
    );
  }
}
