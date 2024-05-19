import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mood_story/screens/welcome.dart';
import 'package:mood_story/src/features/authentication/screens/SplacePage/SplacePage.dart';
import 'package:mood_story/src/utils/theme/reading_theme.dart';
import 'package:mood_story/src/utils/theme/theme.dart';
import 'firebase_options.dart';

void main() async {

   WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(
      const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreenState(),
      )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'E BOOK',
      //theme: lightTheme,
      home:  SplashScreenState(),
    );
  }
}

