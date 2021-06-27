import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mbls/pages/bottomNavigatipPage.dart';
import 'package:search_widget/search_widget.dart';

import '../main.dart';

class HomePage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePageStateful(title: ''),
    );
  }
}

class HomePageStateful extends StatefulWidget {
  HomePageStateful({Key key, this.title}) : super(key: key);

  final String title;

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePageStateful> {
  List<Color> clr = [Colors.white, Colors.blue];
  void login(context)
  {
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>LoginPage()));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
            padding: EdgeInsets.only(top: 40, left: 10),
            width: double.infinity,
            height: 270,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [Colors.blue, Colors.lightBlueAccent]),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12))),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(children: [
                    Text(
                      "Welcome Back",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 95,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white60,
                          borderRadius: BorderRadius.circular(10)),
                      width: 50,
                      height: 50,
                      child: IconButton(
                        icon: Icon(Icons.logout),
                        onPressed: () => {login(context)},
                      ),
                    )
                  ]),
                  Text(
                    "Student!",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 35),
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Container(
                            width: 400,
                            height: 60,
                            child: TextField(
                              decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  filled: true,
                                  labelText: "Search",
                                  prefixIcon: Icon(Icons.search),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20)))),
                            ))
                      ],
                    ),
                  )
                ])),
        SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 20,
        ),
        Container(
            padding: EdgeInsets.only(left: 15),
            child: Row(children: [
              Text(
                "Subjects",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    fontFamily: "MonoSpace"),
              ),
            ])),
        SizedBox(
          height: 10,
        ),
        ListView(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            padding: const EdgeInsets.all(8),
            children: <Widget>[
              CarouselSlider(
                items: [
                  Container(
                    padding: EdgeInsets.only(top: 20),
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [Colors.green, Colors.greenAccent]),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    height: 80,
                    width: 80,
                    child: Center(
                        child: Column(
                      children: [
                        Expanded(
                            child: Icon(
                          CupertinoIcons.book_solid,
                          color: Colors.white,
                        )),
                        Expanded(
                            child: Text(
                          "Physics",
                          style: TextStyle(
                              color: Colors.white, fontFamily: "MonoSpace"),
                        ))
                      ],
                    )),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 20),
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [Colors.deepOrange, Colors.orangeAccent]),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    height: 80,
                    width: 80,
                    child: Center(
                        child: Column(
                      children: [
                        Expanded(
                          child: Icon(
                            CupertinoIcons.book_solid,
                            color: Colors.white,
                          ),
                        ),
                        Expanded(
                            child: Text(
                          "Maths",
                          style: TextStyle(
                              color: Colors.white, fontFamily: "MonoSpace"),
                        ))
                      ],
                    )),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 20),
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [Colors.blueAccent, Colors.lightBlueAccent]),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    height: 80,
                    width: 80,
                    child: Center(
                        child: Column(
                      children: [
                        Expanded(
                          child: Icon(
                            CupertinoIcons.book_solid,
                            color: Colors.white,
                          ),
                        ),
                        Expanded(
                            child: Text(
                          "Chemistry",
                          style: TextStyle(
                              color: Colors.white, fontFamily: "MonoSpace"),
                        ))
                      ],
                    )),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 20),
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [Colors.cyan, Colors.cyanAccent]),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    height: 80,
                    width: 80,
                    child: Center(
                        child: Column(
                      children: [
                        Expanded(
                          child: Icon(
                            CupertinoIcons.book_solid,
                            color: Colors.white,
                          ),
                        ),
                        Expanded(
                            child: Text(
                          "IEEE",
                          style: TextStyle(
                              color: Colors.white, fontFamily: "MonoSpace"),
                        ))
                      ],
                    )),
                  )
                ],
                options: CarouselOptions(
                  height: 110.0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  viewportFraction: 0.3,
                ),
              )
            ]),
        SizedBox(
          height: 15,
        ),
        Container(
            padding: EdgeInsets.only(left: 15),
            child: Row(children: [
              Text(
                "Top Subjects",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    fontFamily: "MonoSpace"),
              ),
            ])),
        SizedBox(
          height: 20,
        ),

        Container(
         // padding: EdgeInsets.only(left: 20),
          height: 100,
          width: 380,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.pink[50],
          ),
          child: Row(
            children: [Expanded(child:
              Image.network(
                "https://cdn.iconscout.com/icon/premium/png-512-thumb/physics-6-388049.png",
                width: 50,
                height: 50,
              ),),
              Expanded(child:
              Text("JEE PHYSICS",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),),
            Expanded(child:   Icon(Icons.more,color: Colors.black54,))
            ],
          ),
        ),
       SizedBox(height: 10,),
        Container(
          // padding: EdgeInsets.only(left: 20),
          height: 100,
          width: 380,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.yellow[100],
          ),
          child: Row(
            children: [Expanded(child:
            Image.network(
              "https://icons-for-free.com/iconfiles/png/512/calculate+calculation+calculator+general+math+office-1320183160073420774.png",
              width: 50,
              height: 50,
            ),),
              Expanded(child:
              Text("JEE MATHS",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),),
              Expanded(child:   Icon(Icons.more,color: Colors.black54,))
            ],
          ),
        )
      ],
    ));
  }
}
