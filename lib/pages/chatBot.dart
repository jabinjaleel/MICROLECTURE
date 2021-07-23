import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dialogflow/dialogflow_v2.dart';
import 'package:mbls/database/dataBaseConnection.dart';
import 'package:mbls/pages/settings.dart';
import 'package:mbls/widgets/textfield.dart';

class DialogFlow extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DialogFlowStateful(title: ''),
    );
  }
}

class DialogFlowStateful extends StatefulWidget {
  DialogFlowStateful({Key key, this.title}) : super(key: key);

  final String title;

  @override
  DialogFlowState createState() => DialogFlowState();
}

class DialogFlowState extends State<DialogFlowStateful> {
  String l, query1;
  final query = TextEditingController();
  List<Widget> wid = [];
  List<Widget> wid1 = [];
  bool flag = true;

  Future<void> profile() async {
    query1 = query.text;
    StudentDetail s = await StudentDB.sdb.viewaddress();
    StudentDetail s1 = StudentDetail(s.name, s.email, s.pass, query1, s.phone);
    StudentDB.sdb.updateTable(s1);


    setState(() {
      query1 = query.text;
      l = "Address changed to:"+s1.city;
      this.wid.add(Column(children: [
            Align(
              alignment: Alignment.topRight,
              child: Container(
                margin: EdgeInsets.only(top: 5, right: 5),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 6.0,
                        offset: Offset(0, 2),
                      ),
                    ],
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                    gradient: LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                        colors: [Colors.blueAccent, Colors.lightBlueAccent])),
                child: Text(
                  query1,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontFamily: "TimesNewRoman",
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                width: 250,
                margin: EdgeInsets.only(top: 5, left: 5),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 6.0,
                        offset: Offset(0, 2),
                      ),
                    ],
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                    gradient: LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                        colors: [Colors.blueAccent, Colors.lightBlueAccent])),
                child: Text(
                  l,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontFamily: "TimesNewRoman",
                  ),
                ),
              ),
            )
          ]));
    });
    flag = true;
  }

  Future<void> sent() async {
    query1 = query.text;

    await dialog(query1);

    setState(() {
      query1 = query.text;
      if (query1 == "yes") {
        flag = false;
        l = "Enter the new address";
      }

      this.wid.add(Column(children: [
            Align(
              alignment: Alignment.topRight,
              child: Container(
                margin: EdgeInsets.only(top: 5, right: 5),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 6.0,
                        offset: Offset(0, 2),
                      ),
                    ],
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                    gradient: LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                        colors: [Colors.blueAccent, Colors.lightBlueAccent])),
                child: Text(
                  query1,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontFamily: "TimesNewRoman",
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                width: 250,
                margin: EdgeInsets.only(top: 5, left: 5),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 6.0,
                        offset: Offset(0, 2),
                      ),
                    ],
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                    gradient: LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                        colors: [Colors.blueAccent, Colors.lightBlueAccent])),
                child: Text(
                  l,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontFamily: "TimesNewRoman",
                  ),
                ),
              ),
            )
          ]));
    });
    query.text = "";
  }

  Future dialog(String q) async {
    AuthGoogle authGoogle =
        await AuthGoogle(fileJson: "assets/dialogFlow.json").build();
    Dialogflow dialogflow =
        Dialogflow(authGoogle: authGoogle, language: Language.english);
    AIResponse response = await dialogflow.detectIntent(q);
    setState(() {
      l = response.getMessage().toString();
    });

    if (l == "your address") {
      StudentDetail s = await StudentDB.sdb.viewaddress();
      String addr = s.city.toString();
      l = l + " is:" + addr + "Do you wat to edit address";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("CHATBOT"),
        ),
        body: ListView(children: [
          Column(
            children: this.wid,
          )
        ]),
        floatingActionButton: Row(children: [
          SizedBox(
            width: 45,
          ),
          DisplayTextfield(
            con: query,
            i1: Icons.question_answer_outlined,
            label: "Query",
          ),
          SizedBox(
            width: 10,
          ),
          Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.blueAccent),
              margin: EdgeInsets.only(bottom: 30),
              child: IconButton(
                  onPressed: flag ? () => {sent()} : () => {profile()},
                  icon: Icon(
                    Icons.send,
                    color: Colors.white,
                  )))
        ]));
  }
}
