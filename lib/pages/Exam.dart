import 'package:flutter/material.dart';
import 'package:mbls/pages/ExamDetails.dart';
import 'package:mbls/pages/homePage.dart';
import 'package:mbls/pages/profile.dart';
import 'package:mbls/pages/settings.dart';
import 'package:mbls/pages/subscribedCourses.dart';

class Exam extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ExamStateful(title: ''),
    );
  }
}

class ExamStateful extends StatefulWidget {
  ExamStateful({Key key, this.title}) : super(key: key);

  final String title;

  @override
  ExamState createState() => ExamState();
}

class ExamState extends State<ExamStateful> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(.1),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
     title: Text("Exam",style: TextStyle(color: Colors.black),),
      ),
      body: Container(
          padding: EdgeInsets.only(top: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          Center(
          child: Text(
          "EXAM",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          )),
      SizedBox(
        height: 25,
      ),
      Row(children: [
        GestureDetector(onTap: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (contex)=>ExamDetail()));
        },child:
      Container(
      decoration: BoxDecoration(
      color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(16))),
      height: 150,
      width: 150,
      margin: EdgeInsets.only(left: 45),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(
              "https://png.pngtree.com/png-vector/20190827/ourmid/pngtree-atom-education-physics-science-abstract-circle-background-fla-png-image_1700441.jpg",
              height: 100, width: 100,
            ),
            Text("PHYSICS", style: TextStyle(fontWeight: FontWeight.bold),)
          ]),
    ),),
    SizedBox(

    width: 10,
    ),
    Container(
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
    Image.network(
    "https://cdn.iconscout.com/icon/premium/png-512-thumb/math-1438283-1216731.png",
    height: 100,width: 100,
    ),
    Text("MATHS",style: TextStyle(fontWeight: FontWeight.bold),)
    ]),
    decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.all(Radius.circular(16))),

    height: 150,
    width: 150,

    margin: EdgeInsets.only(left: 10),
    ),
    ]),

    ],
    ),
    )
    );
  }
}
