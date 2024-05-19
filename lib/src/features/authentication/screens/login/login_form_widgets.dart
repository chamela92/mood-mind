import 'package:flutter/material.dart';
import 'package:mood_story/src/features/authentication/screens/forget_password/forget_password_model_bottom_sheet.dart';
import '../../../../constants/Sizes.dart';
import '../../../../constants/colors.dart';
import '../../../../constants/text_string.dart';
import '../forget_password/forget_password_btn_widget.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(

        child : Container(
            padding: const EdgeInsets.symmetric(vertical: tFormHeight - 10),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.person_3_outlined),
                        labelText: tEmail,
                        hintText: tEmail,
                        border: OutlineInputBorder()
                    ),
                  ),
                  const SizedBox(height:tFormHeight - 20),
                  TextFormField(
                      decoration :const InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        labelText: tPassword,
                        hintText: tPassword,
                        border: OutlineInputBorder(),
                        suffixIcon: IconButton(
                            onPressed: null,
                            icon: Icon(Icons.remove_red_eye_sharp)),
                      )
                  ),

                  const SizedBox(height: tFormHeight - 20),
                  Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(onPressed: (){
                        
                        ForgetPasswordScreen.buildShowModalBottomSheet(context);

                      }, child :const Text (tForgetPassword))
                  ),
                  SizedBox(
                      width :double.infinity,
                      child :ElevatedButton(
                        style:ElevatedButton.styleFrom(backgroundColor: mBtnColor),
                        onPressed: () {},
                        child: Text(tLogin.toUpperCase()
                        ),


                      )

                  ),


                ]
            )

        )

    );
  }


}

