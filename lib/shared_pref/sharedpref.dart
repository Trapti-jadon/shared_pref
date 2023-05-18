import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:widgets_practice/future.dart';

class SharedPref extends StatefulWidget {
  @override
  State<SharedPref> createState() => _SharedPrefState();
}

class _SharedPrefState extends State<SharedPref> {
  var name;

  var NameController = TextEditingController();
  late SharedPreferences prefs;
  @override
  void initState(){
    super.initState();

    //getting the data
   getData();
  }

  void getData()async{
     prefs = await SharedPreferences.getInstance();
    prefs.getString("name");
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Welcome, $name"),
            SizedBox(height: 15,),
            TextField(
              controller: NameController,
            ),
            SizedBox(height: 15,),
            ElevatedButton(onPressed: ()async{
              //setting the data
             var prefs = await SharedPreferences.getInstance();
             prefs.setString("name", NameController.text.toString());
            }, child: Text("save"))

          ],
        ),
      ),
    );
  }
}