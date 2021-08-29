import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:newsapp/network/Remote/DioHelper.dart';

import 'layout/Homelayout.dart';

void main() {
  Diohelper.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(


      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
appBarTheme: AppBarTheme(
  titleTextStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0,color: Colors.black),
  centerTitle: false,
  elevation: 0.0,
  backwardsCompatibility: false,
  systemOverlayStyle: SystemUiOverlayStyle(
    statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark
  ),
  color: Colors.white,
      iconTheme: IconThemeData(
        color: Colors.black
      )
),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          type: BottomNavigationBarType.fixed,
        //  selectedItemColor: Colors.blue,
          backgroundColor: Colors.white,
          elevation: 0.0
        )
      ),
      home: Home_layout()
    );
  }
}


