import 'package:flutter/material.dart';

import '../constants/image_string.dart';
import '../constants/text_string.dart';

class PrimaryHeaderWidget  extends StatelessWidget{

  const PrimaryHeaderWidget({
    Key? key,
    required this. subtitle,
    required this. title,

  }): super(key : key);

  final String subtitle,title;


  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    return  Column(

      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Text(title,style: Theme.of(context).textTheme.titleLarge),
        Text(subtitle,style: Theme.of(context).textTheme.titleMedium),

      ],
    );


  }
}