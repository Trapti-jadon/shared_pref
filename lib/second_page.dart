import 'package:flutter/material.dart';
import 'package:widgets_practice/homepage.dart';

class SecondPage extends StatelessWidget {

  String name;
  SecondPage(this.name);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Welcome $name"),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
            }, child: Text("Back"))
          ],
        ),
      )

    );
  }
}