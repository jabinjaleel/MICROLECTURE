import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dialogflow/dialogflow_v2.dart';
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

  Future<void> sent() async {
    query1 = query.text;
    if (query1 == "exit") {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => DisplaySettings()));
    }
    await dialog(query1);
    setState(() {
      query1 = query.text;
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
                  onPressed: () => {sent()},
                  icon: Icon(
                    Icons.send,
                    color: Colors.white,
                  )))
        ]));
  }
}
