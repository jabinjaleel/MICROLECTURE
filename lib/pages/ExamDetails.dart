import 'package:flutter/material.dart';
import 'package:mbls/pages/homePage.dart';
import 'package:mbls/pages/profile.dart';
import 'package:mbls/pages/settings.dart';
import 'package:mbls/pages/subscribedCourses.dart';

class ExamDetail extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ExamDetailStateful(title: ''),
    );
  }
}

class ExamDetailStateful extends StatefulWidget {
  ExamDetailStateful({Key key, this.title}) : super(key: key);

  final String title;

  @override
  ExamDetailState createState() => ExamDetailState();
}

class ExamDetailState extends State<ExamDetailStateful> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
            backgroundColor: Colors.grey.withOpacity(.1),
            appBar: AppBar(
                title: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Physics Online",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 28,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Test",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 28,
                            fontWeight: FontWeight.bold),
                      )
                    ]),
                backgroundColor: Colors.white,
                bottom: TabBar(
                  isScrollable: true,
                  indicatorColor: Colors.purple,
                  tabs: [
                    Tab(
                        child: Text(
                      "Chapter",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    )),
                    Tab(
                        child: Text("Module",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15))),
                    Tab(
                        child: Text("Final Exam",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15)))
                  ],
                )),
            body: TabBarView(children: [
              Container(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 50),
                      padding: EdgeInsets.only(top: 10, left: 10),
                      height: 130,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 6.0,
                              offset: Offset(0, 2),
                            ),
                          ],
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          )),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(children: [
                            Text("25 QUESTION"),
                            SizedBox(width: 190,),
                            Container(
                              width: 50,
                              height: 25,
                              color: Colors.lightBlueAccent,
                              child: Center(child: Text("NEW",style: TextStyle(color: Colors.white),)),
                            )
                          ]),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Practical Units",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(children: [
                            Icon(
                              Icons.lock_clock,
                              color: Colors.purple,
                            ),
                            Text("10 minutes allowed",
                                style: TextStyle(
                                    color: Colors.purple,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(
                              width: 90,
                            ),
                            OutlineButton(
                                borderSide: BorderSide(
                                  color: Colors.purpleAccent,
                                ),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.play_arrow,
                                      color: Colors.purple,
                                    ),
                                    Text(
                                      "Start",
                                      style: TextStyle(
                                          color: Colors.purple,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                                onPressed: () {},
                                shape: new RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(26.0),
                                ))
                          ]),


                        ],
                      ),
                    ),
                    SizedBox(height: 15,),
                    Container(
                      padding: EdgeInsets.only(top: 10, left: 10),
                      height: 130,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 6.0,
                              offset: Offset(0, 2),
                            ),
                          ],
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          )),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(children: [
                            Text("35 QUESTION"),
                            SizedBox(width: 160,),
                            Container(
                              width: 80,
                              height: 27,
                              color: Colors.greenAccent,
                              child: Center(child: Text("Completed",style: TextStyle(color: Colors.white),)),
                            )
                          ]),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Rotational Motion",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(children: [
                            Icon(
                              Icons.lock_clock,
                              color: Colors.purple,
                            ),
                            Text("20 minutes allowed",
                                style: TextStyle(
                                    color: Colors.purple,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(
                              width: 90,
                            ),
                            OutlineButton(
                                borderSide: BorderSide(
                                  color: Colors.purpleAccent,
                                ),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.play_arrow,
                                      color: Colors.purple,
                                    ),
                                    Text(
                                      "Start",
                                      style: TextStyle(
                                          color: Colors.purple,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                                onPressed: () {},
                                shape: new RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(26.0),
                                ))
                          ]),


                        ],
                      ),
                    ),
                    SizedBox(height: 15,),
                    Container(
                      padding: EdgeInsets.only(top: 10, left: 10),
                      height: 130,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 6.0,
                              offset: Offset(0, 2),
                            ),
                          ],
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          )),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(children: [
                            Text("30 QUESTION"),
                            SizedBox(width: 160,),
                            Container(
                              width: 80,
                              height: 27,
                              color: Colors.greenAccent,
                              child: Center(child: Text("Completed",style: TextStyle(color: Colors.white),)),
                            )
                          ]),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "System of Units",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(children: [
                            Icon(
                              Icons.lock_clock,
                              color: Colors.purple,
                            ),
                            Text("15 minutes allowed",
                                style: TextStyle(
                                    color: Colors.purple,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(
                              width: 90,
                            ),
                            OutlineButton(
                                borderSide: BorderSide(
                                  color: Colors.purpleAccent,
                                ),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.play_arrow,
                                      color: Colors.purple,
                                    ),
                                    Text(
                                      "Start",
                                      style: TextStyle(
                                          color: Colors.purple,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                                onPressed: () {},
                                shape: new RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(26.0),
                                ))
                          ]),


                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Text("jjjj"),
              Text("hhh")
            ])));
  }
}
