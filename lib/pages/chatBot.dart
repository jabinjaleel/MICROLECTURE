import 'package:flutter/material.dart';
import 'package:flutter_dialogflow/dialogflow_v2.dart';


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
  void initState()
  {
    dialog();
  }
 Future<void> dialog()
 async {
   AuthGoogle authGoogle = await AuthGoogle(fileJson: "assets/dialogFlow.json").build();
   Dialogflow dialogflow = Dialogflow(authGoogle: authGoogle,language: Language.english);
   AIResponse response = await dialogflow.detectIntent("What is programming Language");
   print(response.getMessage());
 }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body:Text("hhh")

    );
  }
}
