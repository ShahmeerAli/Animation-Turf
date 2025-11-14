import 'dart:async';

import 'package:animationturf/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=>SplashState();


}

class SplashState extends State<SplashScreen>{


  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), (){

      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MyHomePage()));

    });
  }

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Container(
       width: double.infinity,
       height: double.infinity,
       decoration: BoxDecoration(
         color: Colors.white
       ),
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         crossAxisAlignment: CrossAxisAlignment.center,
         children: [
           Lottie.asset("assets/raw/starting.json",width: 400,height: 400),
           Text("Animation Turf",style: TextStyle(fontSize: 25,fontFamily: "PermanentMarker"),)
         ],
       ),
     ),
   );
  }

}