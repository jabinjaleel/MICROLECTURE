import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';
import 'package:mbls/pages/Exam.dart';
import 'package:mbls/pages/homePage.dart';
import 'package:mbls/pages/bottomNavigatipPage.dart';
import 'package:mbls/pages/profile.dart';
import 'package:mbls/pages/settings.dart';
import 'package:mbls/pages/subscribedCourses.dart';

import 'ExamDetails.dart';

class ModuleExam extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ModuleExamStateful(title: ''),
    );
  }
}

class ModuleExamStateful extends StatefulWidget {
  ModuleExamStateful({Key key, this.title}) : super(key: key);

  final String title;

  @override
  ModuleExamState createState() => ModuleExamState();
}

class ModuleExamState extends State<ModuleExamStateful> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IntroSlider(
            onDonePress: () {
              showCupertinoDialog(
                  context: context,
                  builder: (context) => CupertinoAlertDialog(
                        content: Text(
                          "Sumbit?",
                        ),
                        actions: [
                          CupertinoDialogAction(
                            child: Text("OK"),
                            onPressed: () {
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (context) => ExamDetail()));
                            },
                          ),
                          CupertinoDialogAction(child: Text("Cancel"))
                        ],
                      ));
            },
            slides: [
          Slide(
              backgroundColor: Colors.lightBlueAccent,
              title: "Question 1",
              centerWidget: Text(
                "Define Vector Space Model?",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
          widgetDescription: Column(
            children: <Widget>[
              Card(   shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
                  shadowColor: Colors.black12,
                  elevation: 3.0,
                  color: Colors.lightBlue,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextField(
                      maxLines: 20,
                      decoration: InputDecoration.collapsed(hintText: "Enter your answer here"),
                    ),
                  )
              )
            ],
          )),
              Slide(
                  backgroundColor: Colors.lightBlueAccent,
                  title: "Question 1",
                  centerWidget: Text(
                    "Explain the working of Electric Engine?",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  widgetDescription: Column(
                    children: <Widget>[
                      Card(   shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                          shadowColor: Colors.black12,
                          elevation: 3.0,
                          color: Colors.lightBlue,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: TextField(
                              maxLines: 20,
                              decoration: InputDecoration.collapsed(hintText: "Enter your answer here"),
                            ),
                          )
                      )
                    ],
                  ))
        ]));
  }
}
