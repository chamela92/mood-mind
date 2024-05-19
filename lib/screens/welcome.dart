import 'package:flutter/material.dart';
import 'home.dart';

class SplashScreenState  extends StatelessWidget{
  const SplashScreenState({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body :SafeArea(
        child: Container(
          width: double.infinity,
          height:MediaQuery.of(context).size.height,
          padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 80),
          child: Column(
            mainAxisAlignment:MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                crossAxisAlignment:CrossAxisAlignment.center,
                children:<Widget>[
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
                  Text(" Get lost in tales that speak directly to your soul.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 20
                    ),),
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height/3,
                decoration: const BoxDecoration(
                    image:DecorationImage(
                        image: AssetImage('assets/book.png')
                    )
                ),
              ),
              Column(
                children:<Widget>[
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: (){
                      Navigator.push(context,MaterialPageRoute(
                        builder:(context) => const MainHomePage(),));
                    },
                    color: Colors.blueAccent,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            color:Colors.blueAccent
                        ),
                        borderRadius: BorderRadius.circular(50)
                    ),
                    child: const Text("Get Started",style: TextStyle(
                        fontWeight:FontWeight.w600,
                        fontSize: 18),),
                  ),
                ],
              )

            ],
          ),
        ),
      ),
    );
  }

}
