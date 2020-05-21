import 'package:com/BottomNavigationFolder/bottom_nav_main_page.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

class SplashScreenPage extends StatefulWidget{

  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {

  Widget build(BuildContext context){


    return SplashScreen(
      seconds: 4,
      navigateAfterSeconds: BottomNavMainPage(),
      title: new Text('GRAVITY',
        style: new TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0
        ),),
      backgroundColor: Colors.white,
    //  styleTextUnderTheLoader: new TextStyle(),
    );
  }
}