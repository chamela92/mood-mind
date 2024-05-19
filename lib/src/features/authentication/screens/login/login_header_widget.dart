import 'package:flutter/material.dart';

import '../../../../constants/image_string.dart';
import '../../../../constants/text_string.dart';

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image (
          image:const AssetImage(tLoginImage),
          height : size.height * 0.2,
        ),
        Text(lOginTitle, style :Theme.of(context).textTheme.headlineMedium),
      ],
    );
  }
}