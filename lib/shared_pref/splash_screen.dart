import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:widgets_practice/shared_pref/home_screen.dart';
import 'package:widgets_practice/shared_pref/login_screen.dart';
import 'package:widgets_practice/shared_pref/sharedpref.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() { 
    Timer(Duration(seconds: 4), (){
      //Navigation
      getLoginData();

    }); 
    super.initState();
  }

void getLoginData()async{
   var prefs = await SharedPreferences.getInstance();
  bool? isLogin =  prefs.getBool("Login");

  if(isLogin!=null){
    if(isLogin){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
    }else{
       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const LoginScreen()));
    }

  }else{
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
  }
}

  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Icon(Icons.account_balance_rounded,color: Colors.white,),
      ),
    );
  }
}