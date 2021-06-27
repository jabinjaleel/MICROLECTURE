import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';
import 'package:mbls/pages/ExamDetails.dart';
import 'package:mbls/pages/homePage.dart';
import 'package:mbls/pages/loginPage.dart';
import 'package:mbls/pages/profile.dart';
import 'package:mbls/pages/settings.dart';
import 'package:mbls/pages/subscribedCourses.dart';

class McqTest extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: McqTestStateful(title: ''),
    );
  }
}

class McqTestStateful extends StatefulWidget {
  McqTestStateful({Key key, this.title}) : super(key: key);

  final String title;

  @override
  McqTestState createState() => McqTestState();
}

class McqTestState extends State<McqTestStateful> {
  List<Slide> slides = [];
  bool ip1 = false;

  @override

  Widget build(BuildContext context) {
    return Scaffold(

        body: IntroSlider(
          onDonePress: () {
            showCupertinoDialog(context: context, builder: (context)=>CupertinoAlertDialog(content: Text("Sumbit?",),actions: [
              CupertinoDialogAction(child: Text("OK"),onPressed: (){
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>ExamDetail()));
              },),
              CupertinoDialogAction(child: Text("Camcel"))
            ],));

          },
          slides: [
            Slide(
                centerWidget: Text(
                  "What is Fluid Mechanics?",
                  style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold),
                ),
                title: "Question 1",
                backgroundColor: Colors.lightBlueAccent,
                widgetDescription: Column(
                  children: [
                    ListTile(
                      leading: Radio(
                        value: ip1,
                        onChanged: (bool val1) {
                          setState(() {
                            ip1 = val1;
                          });
                        },
                      ),
                      title: Text(
                        "Option 0",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    ListTile(
                      leading: Radio(
                        value: ip1,
                        onChanged: (bool val1) {
                          setState(() {
                            ip1 = val1;
                          });
                        },
                      ),
                      title:
                          Text("Option 1", style: TextStyle(color: Colors.white)),
                    ),
                    ListTile(
                      leading: Radio(
                        value: ip1,
                        onChanged: (bool val1) {
                          setState(() {
                            ip1 = val1;
                          });
                        },
                      ),
                      title:
                          Text("Option 2", style: TextStyle(color: Colors.white)),
                    ),
                    ListTile(
                      leading: Radio(
                        value: ip1,
                        onChanged: (bool val1) {
                          setState(() {
                            ip1 = val1;
                          });
                        },
                      ),
                      title:
                          Text("Option 3", style: TextStyle(color: Colors.white)),
                    )
                  ],
                )),
            Slide(
                centerWidget: Text(
                  "What is  electron?",
                  style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold),
                ),
                title: "Question 2",
                backgroundColor: Colors.lightBlueAccent,
                widgetDescription: Column(
                  children: [
                    ListTile(
                      leading: Radio(
                        value: ip1,
                        onChanged: (bool val1) {
                          setState(() {
                            ip1 = val1;
                          });
                        },
                      ),
                      title: Text(
                        "Option 0",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    ListTile(
                      leading: Radio(
                        value: ip1,
                        onChanged: (bool val1) {
                          setState(() {
                            ip1 = val1;
                          });
                        },
                      ),
                      title:
                      Text("Option 1", style: TextStyle(color: Colors.white)),
                    ),
                    ListTile(
                      leading: Radio(
                        value: ip1,
                        onChanged: (bool val1) {
                          setState(() {
                            ip1 = val1;
                          });
                        },
                      ),
                      title:
                      Text("Option 2", style: TextStyle(color: Colors.white)),
                    ),
                    ListTile(
                      leading: Radio(
                        value: ip1,
                        onChanged: (bool val1) {
                          setState(() {
                            ip1 = val1;
                          });
                        },
                      ),
                      title:
                      Text("Option 3", style: TextStyle(color: Colors.white)),
                    )
                  ],
                )),
            Slide(
                centerWidget: Text(
                  "What is velocity?",
                  style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold),
                ),
                title: "Question 3",
                backgroundColor: Colors.lightBlueAccent,
                widgetDescription: Column(
                  children: [
                    ListTile(
                      leading: Radio(
                        value: ip1,
                        onChanged: (bool val1) {
                          setState(() {
                            ip1 = val1;
                          });
                        },
                      ),
                      title: Text(
                        "Option 0",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    ListTile(
                      leading: Radio(
                        value: ip1,
                        onChanged: (bool val1) {
                          setState(() {
                            ip1 = val1;
                          });
                        },
                      ),
                      title:
                      Text("Option 1", style: TextStyle(color: Colors.white)),
                    ),
                    ListTile(
                      leading: Radio(
                        value: ip1,
                        onChanged: (bool val1) {
                          setState(() {
                            ip1 = val1;
                          });
                        },
                      ),
                      title:
                      Text("Option 2", style: TextStyle(color: Colors.white)),
                    ),
                    ListTile(
                      leading: Radio(
                        value: ip1,
                        onChanged: (bool val1) {
                          setState(() {
                            ip1 = val1;
                          });
                        },
                      ),
                      title:
                      Text("Option 3", style: TextStyle(color: Colors.white)),
                    )
                  ],
                )),
          ],
        ));
  }
}
