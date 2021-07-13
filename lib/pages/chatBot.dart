import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dialogflow/dialogflow_v2.dart';
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
  String l="";
  String k="";
  final query = TextEditingController();
void initState()
{
  dialog("light speed");
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
        body: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
              gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: [Colors.blueAccent, Colors.lightBlueAccent])),
          margin: EdgeInsets.only(
            top: 100,
            left: 10,
          ),
          child: Text(
            l,
            style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontFamily: "TimesNewRoman",
                fontWeight: FontWeight.bold),
          ),
        ),
        floatingActionButton: Row(children: [DisplayTextfield(
          con: query,
          i1: Icons.question_answer_outlined,
          label: "Query",
        ),IconButton(onPressed: (){setState(() {
         dialog("What is programming language");
        });}, icon: Icon(Icons.send))]));
  }
}
