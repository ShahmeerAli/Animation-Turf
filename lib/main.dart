import 'package:animationturf/splashscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: SplashScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage();



  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List<Map<String,dynamic>> items=[
    {'color':Colors.pink,"image":"assets/images/Astra.png","name":"Astra","category":"Controller"},
    {'color':Colors.green,"image":"assets/images/brimstone.png","name":"Brimstone","category":"Controller"},
    {'color':Colors.yellow,"image":"assets/images/Clove.png","name":"Clove","category":"Controller"},
    {'color':Colors.blue,"image":"assets/images/cypher.png","name":"Cypher","category":"Sentinel"},
    {'color':Colors.orange,"image":"assets/images/Harbor.png","name":"Harbor","category":"Controller"},
    {'color':Colors.purple,"image":"assets/images/iso.png","name":"Iso","category":"Duelist"},
    {'color':Colors.pink,"image":"assets/images/jett.png","name":"Jett","category":"Duelist"},
    {'color':Colors.green,"image":"assets/images/neon.png","name":"Neon","category":"Duelist"},
    {'color':Colors.yellow,"image":"assets/images/Omen.png","name":"Omen","category":"Controller"},
    {'color':Colors.red,"image":"assets/images/phoenix.png","name":"Phoenix","category":"Duelist"},
    {'color':Colors.purple,"image":"assets/images/raze.png","name":"Raze","category":"Duelist"},
    {'color':Colors.pink,"image":"assets/images/reyna.png","name":"Reyna","category":"Duelist"},
    {'color':Colors.orange,"image":"assets/images/skye.png","name":"Skye","category":"Initiator"},
    {'color':Colors.yellow,"image":"assets/images/veto.png","name":"Veto","category":"Sentinel"},
    {'color':Colors.purple,"image":"assets/images/Viper.png","name":"Viper","category":"Controller"},
    {'color':Colors.red,"image":"assets/images/vyse.png","name":"Vyse","category":"Sentinel"},
    {'color':Colors.blue,"image":"assets/images/waylay.png","name":"Waylay","category":"Duelist"},
    {'color':Colors.green,"image":"assets/images/yoru.png","name":"Yoru","category":"Duelist"}



  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        child:PageView.builder(itemCount: items.length,itemBuilder: (context,index){
          final list=items[index];
              return SafeArea(
                child: Container(
                  color: list['color'],
                  child: Column(
                    children: [
                      Text(list['name'],style: TextStyle(fontSize: 60,fontFamily: 'PermanentMarker',color: Colors.white),),
                      Text(list['category'],style: TextStyle(fontFamily: 'PermanentMarker',fontSize: 35,color: Colors.white),),
                      SizedBox(height: 90,),
                      Image.asset(list['image'],width: 400,height: 400,),

                    ],
                  ),
                ),
              );
        },physics:  BouncingScrollPhysics(),)
      ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
