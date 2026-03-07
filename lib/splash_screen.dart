import 'package:flutter/material.dart';
import 'login_screen.dart';

class SplashScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SingleChildScrollView(
        child:Column(
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

          SizedBox(height:10),

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
         SizedBox(height:10),
         ElevatedButton(
          onPressed:(){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder:(context)=>LoginScreen(),
              ),
            );
          },
          style:ElevatedButton.styleFrom(
            backgroundColor:Colors.lightBlue,
            padding:EdgeInsets.symmetric(horizontal: 80,vertical:15),
          ),
          child:Text("Login"),
         ),
        ],
      ),
      ),
    );
  }
}