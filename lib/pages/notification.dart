import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mbls/pages/Exam.dart';
import 'package:mbls/pages/homePage.dart';
import 'package:mbls/pages/bottomNavigatipPage.dart';
import 'package:mbls/pages/profile.dart';
import 'package:mbls/pages/settings.dart';
import 'package:mbls/pages/subscribedCourses.dart';

class SubjectNotification extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SubjectNotificationStateful(title: ''),
    );
  }
}

class SubjectNotificationStateful extends StatefulWidget {
  SubjectNotificationStateful({Key key, this.title}) : super(key: key);

  final String title;

  @override
  SubjectNotificationState createState() => SubjectNotificationState();
}

class SubjectNotificationState extends State<SubjectNotificationStateful> {
  DateTime currentDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime pickedDate = await showDatePicker(
        context: context,
        initialDate: currentDate,
        firstDate: DateTime(2015),
        lastDate: DateTime(2050));
    if (pickedDate != null && pickedDate != currentDate)
      setState(() {
        currentDate = pickedDate;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
          title: Text("Notification"),
        ),
        body: Container(
          margin: EdgeInsets.only(top: 20),
          height: double.infinity,
          width: double.infinity,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(left: 50),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        "JEE PHYSICS",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                    ),
                    Expanded(
                        child: IconButton(
                            onPressed: () {_selectDate(context);},
                            icon: Icon(
                              Icons.alarm,
                              color: Colors.white,
                            )))
                  ],
                ),
                height: 80,
                width: 350,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(45, 55, 75, 1.0),
                    borderRadius: BorderRadius.all(
                      Radius.circular(12),
                    )),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                padding: EdgeInsets.only(left: 50),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        "MATHS",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                    ),
                    Expanded(
                        child: IconButton(
                            onPressed: () { _selectDate(context);},
                            icon: Icon(
                              Icons.alarm,
                              color: Colors.yellow,
                            )))
                  ],
                ),
                height: 80,
                width: 350,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(45, 55, 75, 1.0),
                    borderRadius: BorderRadius.all(
                      Radius.circular(12),
                    )),
              )
            ],
          ),
        ));
  }
}
