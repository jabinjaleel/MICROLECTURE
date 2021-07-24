import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mbls/widgets/textfield.dart';

class Sample extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: SampleStateful(title: 'Flutter Demo Home Page'),
    );
  }
}

class SampleStateful extends StatefulWidget {
  SampleStateful({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  SampleState createState() => SampleState();
}

class SampleState extends State<SampleStateful> {
  final query = TextEditingController();
  var query1;
  int ch = 0;
  List<Widget> wid = [];
  int response()
  {
    query1=  query.text;
    int chc=int.parse(query1);
    return chc;
  }

  Future<void> menu() async {
    query1 = query.text;
    ch = int.parse(query1);
    print(ch);
    if(ch==1) {
      setState(() {
        this.wid.add(Container(decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            color: Colors.greenAccent),child: Column(children: [
              Text("1.Select"),
          Text("2.Select"),
          Text("3.Exit")
        ],),),);
      });

    }
    print("Exited");
  }

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Column(
          children: this.wid
      ),
      floatingActionButton: Row(children: [
        DisplayTextfield(
          con: query,
        ),
        IconButton(onPressed: () =>
        {
          menu()
        }, icon: Icon(Icons.send))
      ]),
    );
  }
}
