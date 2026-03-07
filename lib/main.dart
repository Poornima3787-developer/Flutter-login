import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children:[Image.asset(
          "assets/images/person.png",
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Positioned(
          left:109,
          top:149,
          child:Text(
              "LOGO",
              style: TextStyle(
                fontSize:60,
                fontWeight:FontWeight.bold,
                color:Colors.lightBlue,
              ),
            ),
        ),              
        ],
          ),

          SizedBox(height:20),

          Text(
      "LOREM IPSUM",
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),

    SizedBox(height: 10),

          Padding(
            padding: EdgeInsets.symmetric(horizontal:40),
            child: Text(
              "Lorem Ipsum is a dummy text used as a placeholder.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize:16,
                color:Colors.grey,
              ),
            ),
          ),

        ],
      ),
    );
  }
}