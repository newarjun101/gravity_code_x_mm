import 'package:flutter/material.dart';

class BottomNavCartPage extends StatefulWidget{

  _BottomNavCartPageState createState() => _BottomNavCartPageState();

}

class _BottomNavCartPageState extends State <BottomNavCartPage>{

  Widget build(BuildContext context){
    final size = MediaQuery.of(context).size;
    return  Scaffold(

        body: Text("Cart",style: TextStyle(color: Colors.black),)

    );
  }
}