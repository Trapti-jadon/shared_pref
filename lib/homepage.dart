
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:widgets_practice/note_detail_page.dart';
import 'package:widgets_practice/ui_helper.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var arrContent = [
    {
      'color': MyColor.shadeOrangeColor,
      'title': "How to make your personal brand stand out online",
      'date': "may 21,2023"
    },
    {
      'color': MyColor.shadeYellowColor,
      'title': "How to make your personal brand stand out online",
      'date': 'april 21,2021'
    },
    {
      'color': MyColor.shadeGreenColor,
      'title': "How to make your personal brand stand out online",
      'date': 'march 21,2021'
    },
    {
      'color': MyColor.shadeBlueColor,
      'title': "How to make your personal brand stand out online",
      'date': 'june 21,2021'
    },
    {
      'color': MyColor.shadePurpleColor,
      'title': "How to make your personal brand stand out online",
      'date': 'May 21,2021'
    },
    {
      'color': MyColor.shadeOrangeColor,
      'title': "How to make your personal brand stand out online",
      'date': "january 21,2023"
    },
    {
      'color': MyColor.shadeYellowColor,
      'title': "How to make your personal brand stand out online",
      'date': 'May 21,2021'
    },
    {
      'color': MyColor.shadeGreenColor,
      'title': "How to make your personal brand stand out online",
      'date': 'May 21,2021'
    },
    {
      'color': MyColor.shadeBlueColor,
      'title': "How to make your personal brand stand out online",
      'date': 'May 21,2021'
    },
    {
      'color': MyColor.shadePurpleColor,
      'title': "How to make your personal brand stand out online",
      'date': 'May 21,2021'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: MyColor.bgColor,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton.extended
        (onPressed: (){

        },
        label: Text("add"),
        icon : Icon(Icons.add),
        ),
        body: Column(
          children: [UIHeader(), BodyContent(context)],
        ),
      ),
    );
  }

  Widget UIHeader() {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Notes",
            style: mHeadline34(mColor: Colors.white),
          ),
          Container(
              height: 50,
              width: 50,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(25)),
              child: Icon(
                Icons.search,
                color: Colors.white,
              ))
        ],
      ),
    );
  }

  Widget BodyContent(BuildContext context) {
    return Expanded(
      child: GridView.custom(
        gridDelegate: SliverQuiltedGridDelegate(
          crossAxisCount: 2,
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
          pattern: [
            QuiltedGridTile(2, 1),
            QuiltedGridTile(1, 1),
            QuiltedGridTile(1, 1),
            QuiltedGridTile(1, 2),
          ],
        ),
        childrenDelegate: SliverChildBuilderDelegate(
          (context, index) => NoteTile(
              arrContent[index]['color'],
              arrContent[index]['title'].toString(),
              arrContent[index]['date'].toString(),context),
              childCount: arrContent.length
        ),
      ),
    );
  }

  Widget NoteTile(mColor, title, date,context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>NoteDetailPage(title,date)));
        },
        child: Container(
          decoration: BoxDecoration(color: mColor,
          borderRadius: BorderRadius.circular(15)
          ),
          
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                
                title,
                style: mHeadline24(mFontWt: FontWeight.w800),
                 textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                date,
                style: mHeadline16(
                    mFontWt: FontWeight.w800,
                    mColor: Colors.black.withOpacity(0.4)),
                    textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

