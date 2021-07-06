import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:yibe_org_task1/Card_Container_2.dart';
import 'package:yibe_org_task1/FAB.dart';
import 'package:yibe_org_task1/Card_Container_1.dart';
import 'package:flutter_svg/svg.dart';

class Screen1 extends StatefulWidget {
  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,

      //APPBAR BEGINS HERE
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Container(
          padding: EdgeInsets.all(18),
          child: GestureDetector(
            child: SvgPicture.asset(
              "assets/backarrow.svg",
            ),
          ),
        ),
        titleSpacing: 0,
        title: Text("To do",
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w700,
                fontSize: 20.sp)),
        actions: [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 7.w, 0),
            child: Row(
              children: [
                SvgPicture.asset("assets/search_icon.svg",
                    height: 3.h, color: Colors.black),
                SizedBox(width: 8.w),
                SvgPicture.asset("assets/3_verc_dots.svg",
                    height: 3.h, color: Colors.black),
              ],
            ),
          ),
        ],
      ),

      //BODY BEGINS HERE
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(4.w, 3.h, 4.w, 0),

                  //A CARD CONTAINER WIDGET IS CREATED FOR LISTVIEW BUILDER CONTAINERS
                  //IT IS LOCATED IN CARD CONTAINER DART FILE
                  child: Card_Container_1(),
                ),
                //SizedBox(height: 1.h),
                ExpansionTile(
                  leading: Padding(
                    padding: EdgeInsets.fromLTRB(0.w, 1.h, 0, 0),
                    child: SvgPicture.asset("assets/expansion_tile_icon.svg",
                        height: 0.7.h, color: Color(0xFFF7F71D9)),
                  ),
                  trailing: Container(
                    child: SizedBox(),
                  ),
                  title: Align(
                      child: Text("Unfinished to do",
                          style: TextStyle(
                              fontSize: 10.sp, color: Color(0xFFF7F71D9))),
                      alignment: Alignment(-1.4, 0)),
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(4.w, 0, 4.w, 0),

                      //ABOVE MENTIONED CARD CONTAINER WIDGET IS USED HERE
                      child: Card_Container_2(),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        height: 15.h,
        width: 15.w,

        //FLOATING ACTING BUTTON IS EXTRACTED AS A WIDGET
        //IT CONTAINS SHOW DIALOG BOX AS WELL
        //IT IS LOCATED IN FAB DART FILE
        child: FAB(),
      ),
    ));
  }
}
