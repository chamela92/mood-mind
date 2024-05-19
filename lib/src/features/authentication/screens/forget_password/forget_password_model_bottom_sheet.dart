import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:mood_story/src/features/authentication/screens/forget_password/forget_password_mail.dart';

import '../../../../constants/Sizes.dart';
import '../../../../constants/text_string.dart';
import 'forget_password_btn_widget.dart';


class ForgetPasswordScreen{
  static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      builder: (context) => Container(
        padding: const EdgeInsets.all(tDefaultSize),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(tForgetPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium),
            Text(tForgetPasswordSubTitle,
                style: Theme.of(context).textTheme.titleSmall),
            const SizedBox(height: 30.0),
            ForgetPasswordBtnWidget(
              onTap: (){
                Navigator.pop(context);
                Get.to(() => const ForgetPasswordMailScreen());
                },
              title: tEmail,
              subTitle: tResetViaEmail,
              btnIcon: Icons.mail_outline_rounded,

            ),
            const SizedBox(height:20.0),
            ForgetPasswordBtnWidget(
              onTap: (){},
              title: tphoneNumber,
              subTitle: tResetViaPhone,
              btnIcon: Icons.mobile_friendly_rounded,

            ),

          ],
        ),
      ),
    );
  }
}