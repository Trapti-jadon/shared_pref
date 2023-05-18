import 'package:flutter/material.dart';
import 'package:widgets_practice/ui_helper.dart';

class NoteDetailPage extends StatefulWidget {
var title;
var date;
NoteDetailPage(this.title,this.date);

  @override
  State<NoteDetailPage> createState() => _NoteDetailPageState();
}

class _NoteDetailPageState extends State<NoteDetailPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: MyColor.bgColor,
        body: Column(
          children: [
            UIHeader(widget.date),
            BodyContent(widget.title)
    
          ],
        ),
      ),
    );
  }

    Widget UIHeader(date) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
           InkWell(
            onTap: (){
              Navigator.pop(context);
            },
             child: Container(
                height: 50,
                width: 50,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(25)),
                child: const Icon(
                  
                  Icons.arrow_back,
                  color: Colors.white,
                  size: 34,
                )),
           ),
          Text(
            date,
            style: mHeadline34(mColor: Colors.white),
          ),

          Container(
          padding: EdgeInsets.only(left: 60),
              height: 50,
              width: 50,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(25)),
              child: const Icon(
                Icons.note_alt_rounded,
                color: Colors.white,
              ))
        ],
      ),
    );
  }

  Widget BodyContent(title) {
    return Expanded(
      child: Text(title,style: mHeadline24(mColor: Colors.white),)
    );
  }
}