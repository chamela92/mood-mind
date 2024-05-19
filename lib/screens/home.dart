import 'package:flutter/material.dart';
import 'package:mood_story/src/features/authentication/screens/login/login_screen.dart';


class MainHomePage extends StatelessWidget {
  const MainHomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 80),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  RichText(
                    text: const TextSpan(
                      text: 'Mood ',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Story',
                          style: TextStyle(
                            color: Colors.blueAccent, // Choose the color you want for the second word
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30,),
                  Text(
                    " Select Books Based On Your Mood",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height / 3,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/mood3.png'),
                  ),
                ),
              ),
              Column(
                children: <Widget>[
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: () {
                      //Navigator.push(context,MaterialPageRoute(
                      //builder:(context) => const MoodBased(),));
                    },
                    color: Colors.blue.shade300,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      side:  BorderSide(color: Colors.blue.shade300),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Text(
                      "Mood Based",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  SizedBox(height: 20), // Added SizedBox to give space between buttons
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: () {
                      Navigator.push(context,MaterialPageRoute(
                        builder:(context) => const LoginScreen(),));
                      // Add functionality for the second button
                    },
                    color: Colors.blue.shade300, // Change color if needed
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.blue.shade300),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Text(
                      "Reading Platform", // Change the text accordingly
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

