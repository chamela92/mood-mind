import 'package:flutter/material.dart';

import '../constants/image_string.dart';
import '../constants/text_string.dart';

class FormHeaderWidget  extends StatelessWidget{

  const FormHeaderWidget({
  Key? key,
  required this. image,
  required this. title,
    required this.subtitle

}): super(key : key);

 final String image,title, subtitle;
  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    return  Column(

      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
            image: const AssetImage(tLoginImage),
            height: size.height * 0.2),
            Text(title,style: Theme.of(context).textTheme.headlineMedium),


      ],
    );


  }
}