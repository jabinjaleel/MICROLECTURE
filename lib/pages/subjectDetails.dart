import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SubjectDetails extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SubjectDetailsStateful(title: ''),
    );
  }
}

class SubjectDetailsStateful extends StatefulWidget {
  SubjectDetailsStateful({Key key, this.title}) : super(key: key);

  final String title;

  @override
  SubjectDetailsState createState() => SubjectDetailsState();
}

class SubjectDetailsState extends State<SubjectDetailsStateful> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(top: 45, left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    CupertinoIcons.book_solid,
                    color: Colors.white,
                    size: 30,
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  Text(
                    "Subject",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        fontFamily: "OpenSans"),
                  ),
                  SizedBox(
                    width: 110,
                  ),
                  Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.white.withOpacity(.5)),
                      width: 40,
                      height: 40,
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ))
                ],
              ),
              height: 320,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Colors.lightBlueAccent,
                      Colors.blueAccent,
                    ]),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Container(
                margin: EdgeInsets.only(left: 20),
                child: Text(
                  "Description",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
                )),
            SizedBox(
              height: 5,
            ),
            Container(
                margin: EdgeInsets.only(left: 20),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Physics is the natural science that studies matter, its motion and behavior through space and time, and the related entities of energy and force. Physics is one of the most fundamental scientific disciplines, and its main goal is to understand how the universe behaves.",
                        style: TextStyle(
                            // fontWeight: FontWeight.bold,
                            fontFamily: "TimesNewRoman",
                            fontSize: 16),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Modules",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Container(
                              width: 90,
                              height: 40,
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 6.0,
                                      offset: Offset(0, 2),
                                    ),
                                  ],
                                  gradient: LinearGradient(
                                      begin: Alignment.bottomCenter,
                                      end: Alignment.topCenter,
                                      colors: [Colors.white, Colors.white10]),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: Center(
                                child: Text(
                                  "Velocity",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              )),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                              width: 90,
                              height: 40,
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 6.0,
                                      offset: Offset(0, 2),
                                    ),
                                  ],
                                  gradient: LinearGradient(
                                      begin: Alignment.bottomCenter,
                                      end: Alignment.topCenter,
                                      colors: [Colors.white, Colors.white10]),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: Center(
                                child: Text(
                                  "Units",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              )),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                              width: 90,
                              height: 40,
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 6.0,
                                      offset: Offset(0, 2),
                                    ),
                                  ],
                                  gradient: LinearGradient(
                                      begin: Alignment.bottomCenter,
                                      end: Alignment.topCenter,
                                      colors: [Colors.white, Colors.white10]),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: Center(
                                child: Text(
                                  "Mechanics",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ))
                        ],
                      )
                    ])),
            SizedBox(
              height: 110,
            ),
            Center(
                child: OutlineButton(
              child: Text(
                "SUBSCRIBE",
                style: TextStyle(color: Colors.red),
              ),
              onPressed: () {},
              borderSide: BorderSide(
                color: Colors.red,
              ),
              shape: ContinuousRectangleBorder(
                borderRadius: BorderRadius.circular(26.0),
              ),
            ))
          ],
        ),
      ),
      Positioned(
          left: 27,
          top: 100,
          child: Container(
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20),
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 6.0,
                          offset: Offset(0, 2),
                        ),
                      ],
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://e7.pngegg.com/pngimages/974/504/png-clipart-natural-science-physics-laboratory-science-text-orange.png")),
                      shape: BoxShape.circle,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "PHYSICS",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "(Advanced)",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Rs.500",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                    margin: EdgeInsets.only(left: 90),
                    child: Row(
                      children: [
                        Icon(
                          Icons.stars_sharp,
                          color: Colors.white,
                          size: 30,
                        ),
                        Text(
                          " 9/10",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Icon(
                          Icons.remove_red_eye,
                          color: Colors.white,
                          size: 30,
                        ),
                        Text(
                          " 1250",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ))
              ],
            ),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomCenter,

                    end: Alignment.topCenter,
                    colors: [
                      Colors.lightBlueAccent,
                      Colors.blueAccent,
                    ]),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 6.0,
                    offset: Offset(0, 2),
                  ),
                ],
                color: Colors.lightBlueAccent[400],
                borderRadius: BorderRadius.all(Radius.circular(25))),
            height: 270,
            width: 360,
          ))
    ]));
  }
}
