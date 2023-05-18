import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Responsive extends StatelessWidget {
  const Responsive({super.key});

  @override
  Widget build(BuildContext context) {

    var mq = MediaQuery.of(context);
    var width = mq.size.width;
    var height = mq.size.height;
    var orientation = mq.orientation;
    return Scaffold(
      body: Container(
        child: Center(
            child: Container(
              width: mq.size.width*0.4,
              height: mq.size.height*0.2,
              color: Colors.blue,
              child: LayoutBuilder(builder: (context,Constraints){
                return Container(
                  child: Text("Width: ${Constraints.maxWidth}, Height: ${Constraints.maxHeight}"),
                );
              }),
            )),
      ),
    );
  }

  // Widget Landscape(){
  //   return Row(
  //                 mainAxisAlignment: MainAxisAlignment.center,
  //                 children: [
  //                   Container(
  //                     width: 100,
  //                     height: 100,
  //                     color: Colors.yellow,
  //                   ),
  //                   SizedBox(
  //                     width: 11,
  //                   ),
  //                   Container(
  //                     width: 100,
  //                     height: 100,
  //                     color: Colors.blue,
  //                   ),
  //                 ],
  //               );
  // }

  // Widget Potrate(){
  //   return Column(
  //                 children: [
  //                   Container(
  //                     width: 100,
  //                     height: 100,
  //                     color: Colors.yellow,
  //                   ),
  //                   SizedBox(
  //                     width: 11,
  //                   ),
  //                   Container(
  //                     width: 100,
  //                     height: 100,
  //                     color: Colors.blue,
  //                   ),
  //                 ],
  //               );
  // }
}
