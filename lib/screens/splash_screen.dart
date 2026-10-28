import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen  extends StatefulWidget{
  const SplashScreen({super.key});

 @override
 State<StatefulWidget> createState() => _SplashScreenState();

}

class _SplashScreenState extends State<StatefulWidget>{
 @override

 void initState(){
  super.initState();
Timer(const Duration(seconds: 4), (){
Navigator.pushReplacement(
  context,
  MaterialPageRoute(builder: () =>const HomeScreen())
    );

 });
}

@override
Widget build(BuildContext context) {
  return Scaffold(
           backgroundColor: Colors.orangeAccent,
           body: Center(
               child: Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                               Icon(Icons.restaurant_menu, color: Colors.white54, size:90,),
                               SizedBox(height: 16,),
                               Text(
                                "Recetas App",
                                style: TextStyle(color: Colors.white30, fontSize: 30, fontWeight: FontWeight.bold),
                               ),
                         SizedBox(height: 8,),
                         Text(
                         "Sabores el Mayab",
                         style: TextStyle(color: Colors.white54, fontSize: 13),
                         ),
                        SizedBox(height: 24,),
                        CircularProgressIndicator(color: Colors.white54)
                        
                         ],
               ),
           )
  );
}

}