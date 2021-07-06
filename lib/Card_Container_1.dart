import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class Card_Container_1 extends StatefulWidget {
  const Card_Container_1({
    Key? key,
  }) : super(key: key);

  @override
  _Card_Container_1State createState() => _Card_Container_1State();
}

// ignore: camel_case_types
class _Card_Container_1State extends State<Card_Container_1> {
  bool value = false;
  // ignore: non_constant_identifier_names
  List<bool> Checkbox_values_1 = [false, false, false, false];
  // ignore: non_constant_identifier_names
  List<String> Task_name_1 = ["Task 1", "Task 2", "Task 3", "Task 4"];
  // ignore: non_constant_identifier_names
  List<String> Task_name_2 = ["Task 5", "Task 5", "Task 6", "Task 7"];
  // ignore: non_constant_identifier_names
  List<bool> Checkbox_values_2 = [false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 47.h,
      width: 100.w,
      child: ListView.builder(
          itemCount: 4,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  height: 12.h,
                  width: 100.w,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(5.5.w, 2.h, 1.w, 2.h),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(Task_name_1[index],
                                style: GoogleFonts.roboto(
                                  decoration: Checkbox_values_1[index] == true
                                      ? TextDecoration.lineThrough
                                      : null,
                                  fontSize: 15.sp,
                                  color: Colors.black,
                                )),
                            SizedBox(height: 0.5.h),
                            Text('Graphics Team',
                                style: GoogleFonts.roboto(
                                  decoration: Checkbox_values_1[index] == true
                                      ? TextDecoration.lineThrough
                                      : null,
                                  fontSize: 10.sp,
                                  color: Colors.black,
                                )),
                            SizedBox(height: 0.5.h),
                            Text('8 people',
                                style: GoogleFonts.roboto(
                                  decoration: Checkbox_values_1[index] == true
                                      ? TextDecoration.lineThrough
                                      : null,
                                  fontSize: 8.sp,
                                  color: Colors.grey[400],
                                )),
                          ],
                        ),
                        Spacer(),
                        Theme(
                          data: ThemeData(
                              unselectedWidgetColor: Color(0xFFF7F71D9)),
                          child: Transform.scale(
                            scale: 1.5,
                            child: Checkbox(
                                shape: CircleBorder(),
                                value: Checkbox_values_1[index],
                                onChanged: (value) {
                                  setState(() {
                                    Checkbox_values_1[index] = value!;
                                  });
                                }),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.more_vert,
                            color: Colors.grey,
                            size: 4.h,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 1.h),
              ],
            );
          }),
    );
  }
}
