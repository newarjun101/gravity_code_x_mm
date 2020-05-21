import 'package:com/Models/phone_cover_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class BottomNavHomePage extends StatefulWidget{

  _BottomNavHomePageState createState() => _BottomNavHomePageState();
}



class _BottomNavHomePageState extends State<BottomNavHomePage>{


  List<PhoneCoverModel> coverList = [

    PhoneCoverModel("Codex","iphoneX",1000,"Give me This","images/testimage.jpg"),
    PhoneCoverModel("Codex","iphoneX",1000,"Give me This","images/testimage.jpg"),
    PhoneCoverModel("Codex","iphoneX",1000,"Give me This","images/testimage.jpg"),
    PhoneCoverModel("Codex","iphoneX",1000,"Give me This","images/testimage.jpg"),

  ];

  Widget build(BuildContext context){
    return Scaffold(

        body: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text("GRAVITY"),
            actions: <Widget>[

              Icon(Icons.search),

            ]
          ),

          body: Container(
            padding: EdgeInsets.only(left: 5,right: 5,top: 5),
            child: GridView.count(


              shrinkWrap: false,
              crossAxisCount: 2,
                childAspectRatio: MediaQuery.of(context).size.height / 800,

              children: List.generate(coverList.length, (int indext){

                return Card(
                  elevation: 5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[

                      Center(
                        child: Image.asset(coverList[indext].coverImage,
                        width: 100,
                        height: 150,
                        fit: BoxFit.contain,),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(coverList[indext].coverName,
                        style: TextStyle(color: Colors.black45),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 10,top: 5,bottom: 5),
                        child: Text(coverList[indext].coverPrice.toString(),
                        style: TextStyle(color: Colors.black45) ,),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10,bottom: 5),
                        child: Container(
                          padding: EdgeInsets.all(7),
                          child:  Text (
                              coverList[indext].phoneName,
                              style: new TextStyle(
                                  color: Colors.white,

                              )
                          ),
                          decoration:  BoxDecoration (
                              borderRadius: new BorderRadius.all(new Radius.circular(10.0)),
                              color: Colors.black
                          ),

                        ),
                      ),

                    ],
                  ),
                );
              })
               ),
          ),
        )
    );
  }



}