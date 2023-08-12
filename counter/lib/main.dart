import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key?key}):super(key:key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
    home:MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  
  const MyHomePage({Key?key}):super(key:key);

  



  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int numbersec=7;
Timer? repeatedfunction;
startTimer(){

repeatedfunction= Timer.periodic(Duration (seconds:1),(timer) { 
setState(() {
  if( numbersec>0){
  numbersec--;
  }else{
     timer.cancel();
  }
});

});

}

Widget build(BuildContext context){


return Scaffold(
backgroundColor: Colors.black,
body:
Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
Text("$numbersec",style:TextStyle(color: Colors.white,fontSize: 40)),
SizedBox(height:22,),


Text("second",style: TextStyle(color: Colors.white),),
Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
ElevatedButton(onPressed: (){
  startTimer();
}, child: Text("start timer")),
SizedBox(width:22,),
ElevatedButton(onPressed: (){repeatedfunction!.cancel();}, child: Text("stop timer")),

],)
  ],
),
);
}
}