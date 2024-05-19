import 'package:flutter/material.dart';
import 'package:mood_story/src/features/authentication/screens/signup/signup_form_widget.dart';
import '../../../../common_widgets/form_header_widget.dart';
import '../../../../common_widgets/primary_header.dart';
import '../../../../constants/Sizes.dart';
import '../../../../constants/image_string.dart';
import '../../../../constants/text_string.dart';


class SignUpScreen  extends StatelessWidget{
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
          body :SingleChildScrollView(
              child: Container(
                  padding: const EdgeInsets.all(tDefaultSize),
                  child :   Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       const PrimaryHeaderWidget(

                         title: SignUpTitle,
                         subtitle: SignUpSubTitle,


                      ),
                      const SignUpFormWidget(),
                      Column(
                        children: [
                          const Text ("OR"),
                          SizedBox(
                            width: double.infinity,
                            child: OutlinedButton.icon(
                                onPressed: (){},
                              icon:  const Image(
                                image: AssetImage(tGoogleLogoImage),
                                width :20.0,
                              ),
                              label:   Text (tGoogleSign.toUpperCase()),
                          ),
                          ),
                          TextButton(
                            onPressed: (){},
                            child:   Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(text: tWitAccount,
                                      style: Theme.of(context).textTheme.bodyLarge,),
                                    TextSpan(text:tLogin.toUpperCase(),
                                        style: const TextStyle(color: Colors.blue))

                                  ]
                                )),
                          ),
                        ],
                      ),

                    ],

                  )

              )
          )

      ),

    );
  }
}


