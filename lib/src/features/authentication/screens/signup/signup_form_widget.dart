import 'package:flutter/material.dart';
import 'package:get/get.dart%20';
import 'package:get/get_core/src/get_main.dart';

import '../../../../constants/Sizes.dart';
import '../../../../constants/colors.dart';
import '../../../../constants/text_string.dart';
import '../../controllers/signup_controller.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    final controller = Get.put(SignupController());
    return Form(

      key: controller.signupFormKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            controller: controller.firstName,
            expands: false,
            decoration:  const InputDecoration(
              label: Text(tFullName),
              border: OutlineInputBorder(),
              prefixIcon:
              Icon(Icons.person_3_outlined),

            ),
          ),
          const SizedBox(height:tFormHeight-20),
          TextFormField(
            controller: controller.email,
            expands: false,
            decoration:  const InputDecoration(
              label: Text(tEmail),
              border: OutlineInputBorder(),
              prefixIcon:
              Icon(Icons.email_outlined),

            ),
          ),
          const SizedBox(height:tFormHeight-20),
          TextFormField(
            controller: controller.phoneNumber,
            expands: false,
            decoration:  const InputDecoration(
              label: Text(tphoneNumber),
              border: OutlineInputBorder(),
              prefixIcon:
              Icon(Icons.phone),

            ),
          ),
           const SizedBox(height:tFormHeight-20),
          TextFormField(
            controller: controller.password,
            obscureText: controller.hidePassword.value,
            expands: false,
            decoration:   InputDecoration(
              label: const Text(tPassword),
              border:  const OutlineInputBorder(),
              prefixIcon:
              const Icon(Icons.lock),
              suffixIcon: IconButton(
                onPressed: () => controller.hidePassword.value =!controller.hidePassword.value,
                icon:Icon(controller.hidePassword.value ? Icons.remove_red_eye_rounded : Icons.remove_red_eye_rounded)
              ),
            ),
          ),
          const SizedBox(height:tFormHeight-10),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                style:ElevatedButton.styleFrom(backgroundColor: mBtnColor),
                onPressed: () => controller.signup,
                child: Text(tSignUp.toUpperCase())
            ),
          ),
        ],

      ),
    );

  }
}