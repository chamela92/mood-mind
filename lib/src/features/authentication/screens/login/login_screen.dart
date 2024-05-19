import 'package:flutter/material.dart';
import 'package:mood_story/src/constants/Sizes.dart';
import 'package:mood_story/src/constants/image_string.dart';
import 'package:mood_story/src/features/authentication/screens/login/login_form_widgets.dart';
import 'package:mood_story/src/features/authentication/screens/SignUp/signup_screen.dart';
import 'package:mood_story/src/features/authentication/screens/reading_home/HomePage.dart';

import '../../../../constants/text_string.dart';
import '../WelcomePage/WelcomePage.dart';
import 'login_header_widget.dart';

class LoginScreen  extends StatelessWidget{
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
          body :SingleChildScrollView(
          child: Container(
           padding: const EdgeInsets.all(tDefaultSize),
           //padding: tDefaultPadding,
           child :  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LoginHeaderWidget(size: size),

               const LoginForm(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text("OR"),
                  const SizedBox(height: tFormHeight -20,),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton.icon(
                      icon: const Image(image: AssetImage(tGoogleLogoImage),width: 20.0,),
                        onPressed: (){
                          Navigator.push(context,MaterialPageRoute(
                            builder:(context) => const WelcomePage(),));
                        },
                        label: const Text(tGoogleSign),
                    ),
                  ),
                  const SizedBox(
                    height: tFormHeight -20,
                  ),
                  TextButton(onPressed: (){
                    Navigator.push(context,MaterialPageRoute(
                      builder:(context) => const SignUpScreen(),));
                  },
                    child:  Text.rich(TextSpan(
                    text: tWithoutAccount,
                    style: Theme.of(context).textTheme.bodyLarge,
                    children: const [
                      TextSpan(
                        text: tSignUp,
                        style: TextStyle(color : Colors.blue),
                      )
                    ]
                  )
                  ),
                  ),
                ],
              )
              
            ],
            
            )
            
        )
      )
        
      ),

    );
  }
}



