import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart ';

import '../../../constants/authentication repositary.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  ///variables
  final hidePassword = true.obs;
  final firstName =TextEditingController();
  final email =TextEditingController();
  final phoneNumber =TextEditingController();
  final password =TextEditingController();
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

/// --SignUp

void signup() async {
  try{
    //Start Loading


 //register user in the firebase authentication & save user data in the firebase

    await Authenticationrepositary.instance.registerwithEmailAndPassword(email.text.trim(), password.text.trim());

//save authenticated user data in the firebase firestore

  //final newUser =UserModel(

    //id: UserCredential.user!.uid,
    //firstName: firstName.text.trim (),
    //email: email.text.trim(),
    //phoneNumber: phoneNumber.text.trim(),
    //profilePicture:'' ,

  //);
  }catch (e){
   // show some generic error to the user
  }finally{
    //remove loader
  }
}

}
