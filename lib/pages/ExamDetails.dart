import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mbls/pages/homePage.dart';
import 'package:mbls/pages/mcqTest.dart';
import 'package:mbls/pages/profile.dart';
import 'package:mbls/pages/settings.dart';
import 'package:mbls/pages/subscribedCourses.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

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
  void mcq(context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => McqTest()));
  }
double percent=50.0;
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
                        child: Text("Result",
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
                            SizedBox(
                              width: 190,
                            ),
                            Container(
                              width: 50,
                              height: 25,
                              color: Colors.lightBlueAccent,
                              child: Center(
                                  child: Text(
                                "NEW",
                                style: TextStyle(color: Colors.white),
                              )),
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
                                onPressed: () => {
                                      showCupertinoDialog(
                                          context: context,
                                          builder: (context) =>
                                              CupertinoAlertDialog(
                                                title: Text("Confirm!"),
                                                content: Text(
                                                    "Are you Ready for Exam?"),
                                                actions: [
                                                  CupertinoDialogAction(
                                                    child: Text("Yes"),
                                                    onPressed: () =>
                                                        {mcq(context)},
                                                  ),
                                                  CupertinoDialogAction(
                                                    child: Text("No"),
                                                    onPressed: () {},
                                                  )
                                                ],
                                              ))
                                    },
                                shape: new RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(26.0),
                                ))
                          ]),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
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
                            SizedBox(
                              width: 160,
                            ),
                            Container(
                              width: 80,
                              height: 27,
                              color: Colors.greenAccent,
                              child: Center(
                                  child: Text(
                                "Completed",
                                style: TextStyle(color: Colors.white),
                              )),
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
                    SizedBox(
                      height: 15,
                    ),
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
                            SizedBox(
                              width: 160,
                            ),
                            Container(
                              width: 80,
                              height: 27,
                              color: Colors.greenAccent,
                              child: Center(
                                  child: Text(
                                "Completed",
                                style: TextStyle(color: Colors.white),
                              )),
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
                            SizedBox(
                              width: 190,
                            ),
                            Container(
                              width: 50,
                              height: 25,
                              color: Colors.lightBlueAccent,
                              child: Center(
                                  child: Text(
                                    "NEW",
                                    style: TextStyle(color: Colors.white),
                                  )),
                            )
                          ]),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Physics and Measurement",
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
                                onPressed: () => {
                                  showCupertinoDialog(
                                      context: context,
                                      builder: (context) =>
                                          CupertinoAlertDialog(
                                            title: Text("Confirm!"),
                                            content: Text(
                                                "Are you Ready for Exam?"),
                                            actions: [
                                              CupertinoDialogAction(
                                                child: Text("Yes"),
                                                onPressed: () =>
                                                {mcq(context)},
                                              ),
                                              CupertinoDialogAction(
                                                child: Text("No"),
                                                onPressed: () {},
                                              )
                                            ],
                                          ))
                                },
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
              Container(
                width: double.infinity,
                height: double.infinity,
                child: Column(
                  children: [

                    Container(
                      margin: EdgeInsets.only(top: 25),
                      padding: EdgeInsets.only(top: 10, left: 10),
                      width: 350,
                      height: 180,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 6.0,
                              offset: Offset(0, 2),
                            ),
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Stack(
                          children: [Column(
                        children: [

                          Align(
                              alignment: Alignment.topCenter,
                              child: RichText(
                                  text: TextSpan(
                                text: "",
                                style: TextStyle(color: Colors.black),
                                children: [
                                  TextSpan(
                                      text: "Practical units",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15))
                                ],
                              ))),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [

                              Icon(
                                Icons.question_answer_outlined,

                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text("Questions:"),
                              SizedBox(
                                width: 12,
                              ),
                              Text("25"),

                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [

                              Icon(
                                Icons.done,
                                color: Colors.green,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text("Corrected:"),
                              SizedBox(
                                width: 12,
                              ),
                              Text("14"),


                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Icon(
                                Icons.cancel,
                                color: Colors.red,
                              ),
                              SizedBox(width: 5,),
                              Text("Incorrected:"),
                              SizedBox(
                                width: 5,
                              ),
                              Text("14"),



                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Icon(
                                Icons.timer,
                                color: Colors.blue,
                              ),
                              SizedBox(width: 5,),
                              Text("Time taken:"),
                              SizedBox(
                                width: 5,
                              ),
                              Text("5 mins"),
                              SizedBox(width: 55,),
                              Text("SCORE: ",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                              SizedBox(width: 10,),
                              Text("28",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),)


                            ],
                          )
                        ],
                      ),Positioned(left: 200,top: 30,
                              child:  CircularPercentIndicator(
                                progressColor: Colors.blue,
                                percent: .5,
                                animation: true,
                            animationDuration: 1200,
                            center:Text(
                            "51.0%",
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                            ),
                                circularStrokeCap: CircularStrokeCap.round,
                            radius: 90.0,
                            lineWidth: 7.0,
                            ))])
                    )
                  ],
                ),
              )
            ])));
  }
}
