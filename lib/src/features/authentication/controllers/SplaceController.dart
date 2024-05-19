import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import '../screens/WelcomePage/WelcomePage.dart';
import '../screens/reading_home/HomePage.dart';

class SplaceController extends GetxController {
  final auth = FirebaseAuth.instance;

  @override
  void onInit() {
    super.onInit();
    splaceController();
  }

  void splaceController() {
    Future.delayed(const Duration(seconds: 4), () {
      if (auth.currentUser != null) {
        Get.offAll(const HomePage());
      } else {
        Get.offAll(const WelcomePage());
      }
    });
  }
}




