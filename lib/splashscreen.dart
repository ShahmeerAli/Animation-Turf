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
  List<Map<String,String>> items=[
    {"image":"assets/images/Astra.png","name":"Astra","category":"Controller"},
    {"image":"assets/images/brimstone.png","name":"Brimstone","category":"Controller"},
    {"image":"assets/images/Clove.png","name":"Clove","category":"Controller"},
    {"image":"assets/images/cypher.png","name":"Cypher","category":"Sentinel"},
    {"image":"assets/images/Harbor.png","name":"Harbor","category":"Controller"},
    {"image":"assets/images/iso.png","name":"Iso","category":"Duelist"},
    {"image":"assets/images/jett.png","name":"Jett","category":"Duelist"},
    {"image":"assets/images/neon.png","name":"Neon","category":"Duelist"},
    {"image":"assets/images/Omen.png","name":"Omen","category":"Controller"},
    {"image":"assets/images/phoenix.png","name":"Phoenix","category":"Duelist"},
    {"image":"assets/images/raze.png","name":"Raze","category":"Duelist"},
    {"image":"assets/images/reyna.png","name":"Reyna","category":"Duelist"},
    {"image":"assets/images/skye.png","name":"Skye","category":"Initiator"},
    {"image":"assets/images/veto.png","name":"Veto","category":"Sentinel"},
    {"image":"assets/images/Viper.png","name":"Viper","category":"Controller"},
    {"image":"assets/images/vyse.png","name":"Vyse","category":"Sentinel"},
    {"image":"assets/images/waylay.png","name":"Waylay","category":"Duelist"},
    {"image":"assets/images/yoru.png","name":"Yoru","category":"Duelist"}



  ];

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
           Lottie.asset("assets/raw/starting.json",width: 400,height: 400)
         ],
       ),
     ),
   );
  }

}