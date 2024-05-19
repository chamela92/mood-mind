import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart%20';

class Authenticationrepositary extends GetxController {
  static Authenticationrepositary get instance => Get.find();

  //variables
//final deviceStorage = GetStorage();
  final _auth = FirebaseAuth.instance;


  ///Email authentication register

  Future<UserCredential> registerwithEmailAndPassword(String email, String password) async {
    try {
      return await _auth.createUserWithEmailAndPassword(email: email, password: password);
    } catch(e){
      throw 'Something went wrong.Please try again';
    }

  }
}