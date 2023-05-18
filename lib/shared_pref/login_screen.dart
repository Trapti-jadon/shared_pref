import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:widgets_practice/shared_pref/home_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Login",style: TextStyle(fontSize: 34),),
              TextField(),
              TextField(),
              ElevatedButton(onPressed: ()async{
                //when successfully logged in 
                var pref = await SharedPreferences.getInstance();
                pref.setBool("Login",true);
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
              }, child: Text("Login"))
            ],
          ),
        ),
      ),
    );
  }
}