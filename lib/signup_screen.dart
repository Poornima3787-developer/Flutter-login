import "package:flutter/material.dart";
import 'login_screen.dart';

class SignUpForm extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
      body:SingleChildScrollView(
      child:Padding(
        padding:EdgeInsets.all(30),
        child:Column(
          children:[
            SizedBox(height:80),
            Text(
              "Let's Get Started!",
              style: TextStyle(
                fontSize:25,
                fontWeight:FontWeight.bold,
              ),
            ),
            SizedBox(height:5),
            Text("Create an account on XYZ to get all features",
            style:TextStyle(fontSize:15,color:Colors.grey
            ),
            ),
            SizedBox(height:30),
            
            TextField(
              decoration:InputDecoration(
                prefixIcon: Icon(Icons.person),
                hintText:"Firstname",
                filled:true,
                fillColor:Colors.grey[200],
                border:OutlineInputBorder(
                  borderRadius:BorderRadius.circular(10),
                  borderSide:BorderSide.none,
                ),
              ),
            ),

            SizedBox(height:15),

            TextField(
              decoration:InputDecoration(
                prefixIcon: Icon(Icons.person),
                hintText:"Lastname",
                filled:true,
                fillColor:Colors.grey[200],
                border:OutlineInputBorder(
                  borderRadius:BorderRadius.circular(10),
                  borderSide:BorderSide.none,
                ),
              ),
            ),

            SizedBox(height:15),

             TextField(
              decoration:InputDecoration(
                prefixIcon: Icon(Icons.person),
                hintText:"Username",
                filled:true,
                fillColor:Colors.grey[200],
                border:OutlineInputBorder(
                  borderRadius:BorderRadius.circular(10),
                  borderSide:BorderSide.none,
                ),
              ),
            ),

            SizedBox(height:15),

            TextField(
              decoration:InputDecoration(
                prefixIcon: Icon(Icons.email),
                hintText:"Email",
                filled:true,
                fillColor:Colors.grey[200],
                border:OutlineInputBorder(
                  borderRadius:BorderRadius.circular(10),
                  borderSide:BorderSide.none,
                ),
              ),
            ),

            SizedBox(height:15),

            TextField(
              obscureText:true,
              decoration:InputDecoration(
                prefixIcon: Icon(Icons.lock),
                hintText:"Password",
                filled:true,
                fillColor:Colors.grey[200],
                border:OutlineInputBorder(
                  borderRadius:BorderRadius.circular(10),
                  borderSide:BorderSide.none,
                ),
              ),
            ),
            
            SizedBox(height:15),

            TextField(
              decoration:InputDecoration(
                prefixIcon: Icon(Icons.person),
                hintText:"Confirm Password",
                filled:true,
                fillColor:Colors.grey[200],
                border:OutlineInputBorder(
                  borderRadius:BorderRadius.circular(10),
                  borderSide:BorderSide.none,
                ),
              ),
            ),

            SizedBox(height:40),
            SizedBox(
              width:220,
              height:50,
              child: ElevatedButton(
                onPressed:(){},
                style:ElevatedButton.styleFrom(
                  backgroundColor:Colors.lightBlue,
                  shape:RoundedRectangleBorder(
                    borderRadius:BorderRadius.zero,
                  ),
                ),
                child:Text("SIGN UP"),
              ),
            ),

            SizedBox(height:60),
              Row(
               mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  Text("Already have an account? "),    
                    GestureDetector(
                       onTap: () {
                    Navigator.push( context,
                      MaterialPageRoute(
                      builder: (context) => LoginScreen(),
           ),
        );
      },
      child: Text(
        "Login",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.lightBlue,
          ),
          ),
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