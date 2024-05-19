import 'package:flutter/material.dart';
import 'package:mood_story/src/constants/Sizes.dart';
import 'package:mood_story/src/constants/text_string.dart';

import '../../../../common_widgets/form_header_widget.dart';
import '../../../../constants/image_string.dart';

class ForgetPasswordMailScreen extends StatelessWidget{
  const ForgetPasswordMailScreen ({Key? key}) :super (key : key);

  @override
  Widget build (BuildContext){

    return Scaffold(
        body: Container(
          padding: const EdgeInsets.all(tDefaultSize),
          child: const Column(
            children:[
              SizedBox(height: tDefaultSize * 4),
              FormHeaderWidget(
                image :tforgetPasswordimage,
                title: tForgetPassword ,
                subtitle: tForgetPasswordSubTitle,
              )

            ],
          ),
        ));
    
  }
}