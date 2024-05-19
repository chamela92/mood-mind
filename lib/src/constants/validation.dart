import 'package:flutter/material.dart';

class Fvalidator{
  static String? validateEmail(String? value){
    if(value ==null || value.isEmpty){
      return 'Email is required';
    }

    //regular expression for email validation
    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    if(!emailRegExp.hasMatch(value)){
      return 'Invalid email address';
    }
    return null;
  }
  static String? validatePassword (String? value ){
    if (value == null || value.isEmpty){
      return 'Password is required';
    }
    //check for minimum password length
    if(value.length < 6) {
      return 'password must be at least 6 characters long.';
    }
    //check for uppercase letters
    if(!value.contains(RegExp(r'[A-Z]'))){
      return 'password must contain at least one uppercase letter.';
    }
    return null;
  }
}