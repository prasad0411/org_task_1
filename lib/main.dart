import 'package:flutter/material.dart';
import 'package:yibe_org_task1/Screen1.dart';
import 'package:sizer/sizer.dart';

//APART FROM THIS MAIN.DART FILE, 3 FILES HAVE BEEN CREATED
//1-MAIN UI SCREEN WHICH IS IN SCREEN1.DART FILE
//2-CONTAINER FILE FOR LISTVIEW BUILDER WHICH IS IN CARD_CONTAINER.DART FILE
//FLOATING ACTION BUTTON FILE WHICH IS IN FAB.DART FILE

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/Screen1',
        routes: {
          '/Screen1': (context) => Screen1(),
        },
      );
    });
  }
}
