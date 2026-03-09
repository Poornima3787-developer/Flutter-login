import 'package:flutter/material.dart';
import 'signup_screen.dart';

class LoginScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body:Padding(
        padding:EdgeInsets.all(30),
        child:SingleChildScrollView(child: Column(
          children:[
            SizedBox(height:80),
            Text("LOGO",
            style:TextStyle(fontSize:40,
            color:Colors.lightBlue,
            fontWeight:FontWeight.bold
            ),
            ),
            SizedBox(height:30),
            Text("Welcome back",
            style:TextStyle(fontSize:22,fontWeight:FontWeight.bold,
            ),
            ),
            SizedBox(height:10),
            Text("Log in to existing LOGO account",
            style:TextStyle(color:Colors.grey),
            ),
            SizedBox(height:40),
            TextField(
              decoration:InputDecoration(
                prefixIcon:Icon(Icons.person),
                hintText:"Username",
                filled:true,
                fillColor:Colors.grey[200],
                border:OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                borderSide:BorderSide.none
                ),
              ),
            ),
            SizedBox(height:25),
             TextField(
              obscureText:true,
              decoration:InputDecoration(
                prefixIcon:Icon(Icons.lock),
                hintText:"Password",
                filled:true,
                fillColor:Colors.grey[200],
                border:OutlineInputBorder(
                  borderRadius:BorderRadius.circular(10),
                  borderSide:BorderSide.none,
                ),
              ),
             ),
             SizedBox(height:10),
            Align(
              alignment:Alignment.centerRight,
              child:Text("forgot password?",
              style:TextStyle(color:Colors.grey),
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
                child:Text("LOGIN"),
              ),
            ),
             SizedBox(height:60),
             Text("or sign up using",style:TextStyle(fontSize:15),),
             SizedBox(height:15),
             Row(
              mainAxisAlignment :MainAxisAlignment.center,
              children:[
                Icon(Icons.facebook,color:Colors.blue,size:60),
                SizedBox(width:20),
                Icon(Icons.g_mobiledata,color:Colors.red,size:60),
                SizedBox(width:20),
                Icon(Icons.apple,size:60),
              ],
             ),
             SizedBox(height:60),
             Row(
               mainAxisAlignment:MainAxisAlignment.center,
               children:[
                Text("Don't have an account?"),
                GestureDetector(
                  onTap:(){
                    Navigator.push(
                      context,MaterialPageRoute(builder: (context)=>SignUpForm()),
                    );
                  },
                  child: Text(
                     "SignUp",
                     style: TextStyle(
                       fontWeight: FontWeight.bold,
                     color: Colors.lightBlue,
                   ),
                 ),
                ),
               ],
             ),

          ]
        ),)
      ),
    );
  }
}