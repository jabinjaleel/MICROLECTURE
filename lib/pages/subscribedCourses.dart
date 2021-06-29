import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mbls/pages/homePage.dart';
import 'package:mbls/pages/profile.dart';
import 'package:mbls/pages/subjectModules.dart';
import 'package:mbls/pages/videoClass.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import 'Exam.dart';

class DiplaySubscribe extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DiplaySubscribeStateful(title: ''),
    );
  }
}

class DiplaySubscribeStateful extends StatefulWidget {
  DiplaySubscribeStateful({Key key, this.title}) : super(key: key);

  final String title;

  @override
  DiplaySubscribeState createState() => DiplaySubscribeState();
}

class DiplaySubscribeState extends State<DiplaySubscribeStateful> {


  @override
  void videoclass(context)
  {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => VideoClass()));
  }
  void exam(context)
  {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => Exam()));
  }
  void p()
  {
    print("HELLO");
  }
  void submodule(context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => SubModule()));
  }
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            // decoration: BoxDecoration(
            //     gradient: LinearGradient(
            //      //   begin: Alignment.bottomLeft,
            //        // end: Alignment.bottomRight,
            //         colors: [Colors.black87,Colors.black54, Colors.black45])),
            //padding: EdgeInsets.only(left: 15),
            width: double.infinity,
            height: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 35, left: 10),
                  child: Column(children: [
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white60,
                              borderRadius: BorderRadius.circular(10)),
                          width: 50,
                          height: 50,
                          child: IconButton(
                            icon: Icon(Icons.arrow_back),
                            onPressed: () => {},
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Center(
                            child: AnimatedTextKit(
                              animatedTexts: [
                                RotateAnimatedText("Course Progress..",
                                    textStyle: TextStyle(
                                        color: Colors.white, fontSize: 25)),
                                RotateAnimatedText("And More!",
                                    textStyle: TextStyle(
                                        color: Colors.white, fontSize: 25)),
                              ],
                            ),
                          )
                        ])
                  ]),
                  height: 270,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.blue, Colors.lightBlueAccent],
                      ),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(18),
                          bottomRight: Radius.circular(18))),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                    padding: EdgeInsets.only(left: 12),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                "Course Progress",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              )),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            height: 100,
                            width: 390,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Color.fromRGBO(58, 66, 86, 1.0)),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Image.network(
                                    "https://cdn.iconscout.com/icon/premium/png-512-thumb/physics-34-1109281.png",
                                    height: 50,
                                    width: 50,
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "JEE PHYSICS",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 18),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "10 hours,19 lessons",
                                        style: TextStyle(
                                            color: Colors.redAccent,
                                            fontSize: 12),
                                      )
                                    ],
                                  ),
                                ),
                                Expanded(
                                    child: CircularPercentIndicator(
                                  animation: true,
                                  animationDuration: 1200,
                                  radius: 60.0,
                                  lineWidth: 5.0,
                                  percent: 0.25,
                                  center: IconButton(onPressed: ()=>{submodule(context)},
                                    icon: Icon(
                                    Icons.play_arrow,
                                    color: Colors.white,
                                  ),),
                                  progressColor: Colors.blue,
                                ))
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 100,
                            width: 390,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Color.fromRGBO(58, 66, 86, 1.0)),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Image.network(
                                    "https://icons-for-free.com/iconfiles/png/512/math+tutor+icon-1320195955563127435.png",
                                    height: 50,
                                    width: 50,
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "JEE MATHS",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 18),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "8 hours,15 lessons",
                                        style: TextStyle(
                                            color: Colors.redAccent,
                                            fontSize: 12),
                                      )
                                    ],
                                  ),
                                ),
                                Expanded(
                                    child: CircularPercentIndicator(
                                  animation: true,
                                  animationDuration: 1200,
                                  radius: 60.0,
                                  lineWidth: 5.0,
                                  percent: 0.5,
                                  center: IconButton(onPressed: ()=>{videoclass(context)},
                                    icon: Icon(
                                      Icons.play_arrow,
                                      color: Colors.white,
                                    ),),
                                  progressColor: Colors.blue,
                                ))
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 100,
                            width: 390,
                            decoration: BoxDecoration(

                                borderRadius: BorderRadius.circular(25),
                                color: Color.fromRGBO(58, 66, 86, 1.0)),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Image.network(
                                    "https://image.flaticon.com/icons/png/512/201/201555.png",
                                    height: 50,
                                    width: 50,
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "NEET BIOLOGY",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 18),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "11 hours,22 lessons",
                                        style: TextStyle(
                                            color: Colors.redAccent,
                                            fontSize: 12),
                                      )
                                    ],
                                  ),
                                ),
                                Expanded(
                                    child: CircularPercentIndicator(
                                  animation: true,
                                  animationDuration: 1200,
                                  radius: 60.0,
                                  lineWidth: 5.0,
                                  percent: 0.75,
                                  center: IconButton(icon:Icon(
                                    Icons.play_arrow, color: Colors.white,),onPressed: ()=>{exam(context)},),
                                   

                                  progressColor: Colors.blue,
                                ))
                              ],
                            ),
                          ),
                        ]))
              ],
            )));
  }
}
