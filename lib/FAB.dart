import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_svg/svg.dart';
//import 'package:image_stack/image_stack.dart';

class FAB extends StatefulWidget {
  const FAB({
    Key? key,
  }) : super(key: key);

  @override
  _FABState createState() => _FABState();
}

class _FABState extends State<FAB> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Color(0xFFF7F71D9),
      elevation: 0,
      child: SvgPicture.asset("assets/plus_icon_FAB.svg",
          height: 3.h, color: Colors.white),
      onPressed: () {
        showDialog(
            context: context,
            builder: (context) =>
                StatefulBuilder(builder: (BuildContext context, setState) {
                  return AlertDialog(
                    actions: [
                      Padding(
                          padding: EdgeInsets.fromLTRB(2.w, 0.5.h, 2.w, 0.5.h),
                          child: Container(
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                Text('Add to do',
                                    style: TextStyle(fontSize: 13.sp)),
                                SizedBox(height: 3.h),
                                TextField(
                                    decoration: InputDecoration(
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.black)),
                                  isCollapsed: true,
                                  hintText: 'Type here',
                                  hintStyle: TextStyle(
                                      fontSize: 13.sp, color: Colors.grey[300]),
                                ))
                              ]))),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 2.w, 0),
                        child: Row(
                          children: [
                            Container(
                              width: 9.w,
                              child: Theme(
                                data: ThemeData(
                                    unselectedWidgetColor: Color(0xFFF7F71D9)),
                                child: Transform.scale(scale:0.8,
                                  child: Checkbox(
                                      value: value,
                                      onChanged: (value) {
                                        setState(() {
                                          this.value = value!;
                                        });
                                      }),
                                ),
                              ),
                            ),
                            Text('Set reminder',
                                style: TextStyle(fontSize: 13.sp)),
                            Spacer(),
                            Text('Set time',
                                style: TextStyle(
                                    fontSize: 9.sp, color: Color(0xFFF7F71D9)))
                          ],
                        ),
                      ),
                      SizedBox(height: 3.h),
                      Padding(
                        padding: EdgeInsets.fromLTRB(2.w, 0.5.h, 2.w, 0.5.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            
                            Text('Descrption',
                                style: TextStyle(fontSize: 13.sp)),
                            SizedBox(height: 1.5.h),
                            TextField(
                                decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black)),
                              isCollapsed: true,
                              hintText: 'More about to do',
                              hintStyle: TextStyle(
                                  fontSize: 13.sp, color: Colors.grey[300]),
                            )),
                            SizedBox(height: 2.h),
                            MaterialButton(
                              height: 4.h,
                              elevation: 0,
                              color: Colors.grey[200],
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0)),
                              onPressed: () {},
                              child: Container(
                                width: 40.w,
                                child: Row(
                                  children: [
                                    SvgPicture.asset("assets/add_participants.svg",
                                        height: 2.h, color: Colors.black),
                                    SizedBox(width: 2.w),
                                    Text('Add Participants',
                                        style: TextStyle(
                                          fontSize: 13.sp,
                                        ))
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 2.5.h),
                            Row(
                              children: [
                                Spacer(),
                                MaterialButton(
                                  height: 3.0.h,
                                  elevation: 0,
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5.0)),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Container(
                                    width: 13.5.w,
                                    child: Row(
                                      children: [
                                        Text('Cancel',
                                            style: TextStyle(
                                              fontSize: 13.sp,
                                            ))
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(width: 1.w),
                                MaterialButton(
                                  height: 3.h,
                                  elevation: 0,
                                  color: Color(0xFFF7F71D9),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5.0)),
                                  onPressed: () {},
                                  child: Container(
                                    width: 8.w,
                                    child: Row(
                                      children: [
                                        Text('Add',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 13.sp,
                                            ))
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  );
                }));
      },
    );
  }
}

