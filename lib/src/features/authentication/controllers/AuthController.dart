import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../../../constants/Messages.dart';
import '../screens/WelcomePage/WelcomePage.dart';
import '../screens/reading_home/HomePage.dart';

class AuthController extends GetxController {
  RxBool isLoading = false.obs;

  final auth = FirebaseAuth.instance;

  void loginWithEmail() async {
    isLoading.value = true;
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      final GoogleSignInAuthentication? googleAuth =
      await googleUser?.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );
      await auth.signInWithCredential(credential);
      successMessage('Login Success');
      Get.offAll( HomePage());
    } catch (ex) {
      print(ex);
      errorMessage("Error ! Try Agin");
    }
    isLoading.value = false;
  }

  void signout() async {
    await auth.signOut();
    successMessage('Logout');
    Get.offAll(const WelcomePage());
  }
}
