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
    {'color':[Color(0xff428ed1),Colors.white,Color(0xff83ffff)],"image":"assets/images/Astra.png","name":"Astra","category":"Controller",'logo':"assets/images/cont.webp"},
    {'color':[Color(0xffb41f19),Colors.white,Color(0xff8b1f1d)],"image":"assets/images/brimstone.png","name":"Brimstone","category":"Controller",'logo':"assets/images/cont.webp"},
    {'color':[Color(0xfff89484),Colors.white,Color(0xfff9b1d7)],"image":"assets/images/Clove.png","name":"Clove","category":"Controller",'logo':"assets/images/cont.webp"},
    {'color':[Color(0xff006834),Colors.white,Color(0xff00c495)],"image":"assets/images/cypher.png","name":"Cypher","category":"Sentinel",'logo':"assets/images/sent.webp"},
    {'color':[Color(0xff428ed1),Colors.white,Color(0xff83ffff)],"image":"assets/images/Harbor.png","name":"Harbor","category":"Controller",'logo':"assets/images/cont.webp"},
    {'color':[Color(0xffb41f19),Colors.white,Color(0xff8b1f1d)],"image":"assets/images/iso.png","name":"Iso","category":"Duelist",'logo':"assets/images/duel.webp"},
    {'color':[Color(0xfff89484),Colors.white,Color(0xfff9b1d7)],"image":"assets/images/jett.png","name":"Jett","category":"Duelist",'logo':"assets/images/duel.webp"},
    {'color':[Color(0xff006834),Colors.white,Color(0xff00c495)],"image":"assets/images/neon.png","name":"Neon","category":"Duelist",'logo':"assets/images/duel.webp"},
    {'color':[Color(0xff428ed1),Colors.white,Color(0xff83ffff)],"image":"assets/images/Omen.png","name":"Omen","category":"Controller",'logo':"assets/images/cont.webp"},
    {'color':[Color(0xffb41f19),Colors.white,Color(0xff8b1f1d)],"image":"assets/images/phoenix.png","name":"Phoenix","category":"Duelist",'logo':"assets/images/duel.webp"},
    {'color':[Color(0xfff89484),Colors.white,Color(0xfff9b1d7)],"image":"assets/images/raze.png","name":"Raze","category":"Duelist",'logo':"assets/images/duel.webp"},
    {'color':[Color(0xff006834),Colors.white,Color(0xff00c495)],"image":"assets/images/reyna.png","name":"Reyna","category":"Duelist",'logo':"assets/images/duel.webp"},
    {'color':[Color(0xff428ed1),Colors.white,Color(0xff83ffff)],"image":"assets/images/skye.png","name":"Skye","category":"Initiator",'logo':"assets/images/init.webp"},
    {'color':[Color(0xffb41f19),Colors.white,Color(0xff8b1f1d)],"image":"assets/images/veto.png","name":"Veto","category":"Sentinel",'logo':"assets/images/sent.webp"},
    {'color':[Color(0xfff89484),Colors.white,Color(0xfff9b1d7)],"image":"assets/images/Viper.png","name":"Viper","category":"Controller",'logo':"assets/images/cont.webp"},
    {'color':[Color(0xff428ed1),Colors.white,Color(0xff83ffff)],"image":"assets/images/vyse.png","name":"Vyse","category":"Sentinel",'logo':"assets/images/sent.webp"},
    {'color':[Color(0xfff89484),Colors.white,Color(0xfff9b1d7)],"image":"assets/images/waylay.png","name":"Waylay","category":"Duelist",'logo':"assets/images/duel.webp"},
    {'color':[Color(0xffb41f19),Colors.white,Color(0xff8b1f1d)],"image":"assets/images/yoru.png","name":"Yoru","category":"Duelist",'logo':"assets/images/duel.webp"}



  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        child:PageView.builder(itemCount: items.length,
          itemBuilder: (context,index){
          final list=items[index];
              return SafeArea(
                child: Container(
                  decoration: BoxDecoration(
                    gradient:LinearGradient(colors:List<Color>.from(list['color']),begin: Alignment.topRight,end: Alignment.bottomLeft ) ,
                  ),
                  child: Stack(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Center(child: Text(list['name'],style: TextStyle(fontSize: 70,fontWeight: FontWeight.w600,fontFamily: "PermanentMarker",color: Colors.blueGrey.shade200),)),
                          Center(child: Text(list['name'],style: TextStyle(fontSize: 70,fontWeight: FontWeight.w600,fontFamily: "PermanentMarker",color: Colors.blueGrey.shade200),)),
                          Center(child: Text(list['name'],style: TextStyle(fontSize: 70,fontWeight: FontWeight.w600,fontFamily: "PermanentMarker",color: Colors.blueGrey.shade200),)),
                          Center(child: Text(list['name'],style: TextStyle(fontSize: 70,fontWeight: FontWeight.w600,fontFamily: "PermanentMarker",color: Colors.blueGrey.shade200),)),
                        ],
                      ),
                      Column(
                        children: [
                          Text(list['name'],style: TextStyle(fontSize: 60,fontFamily: 'PermanentMarker',color: Colors.white,fontWeight: FontWeight.bold),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(list['logo']),
                              SizedBox(width: 20,),
                              Text(list['category'],style: TextStyle(fontFamily: 'PermanentMarker',fontSize: 35,color: Colors.white,fontWeight: FontWeight
                              .bold),),
                            ],
                          ),
                          SizedBox(height: 90,),
                          Image.asset(list['image'],width: 400,height: 480,),

                        ],
                      ),
                    ],
                  ),
                ),
              );
        },physics:  BouncingScrollPhysics(),)
      ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
