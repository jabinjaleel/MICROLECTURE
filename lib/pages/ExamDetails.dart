import 'package:flutter/material.dart';
import 'package:mbls/pages/homePage.dart';
import 'package:mbls/pages/profile.dart';
import 'package:mbls/pages/settings.dart';
import 'package:mbls/pages/subscribedCourses.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.withOpacity(.1),
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Icon(
            Icons.arrow_back_ios,
            color: Colors.orange,
          ),
          title: Text(""),
          actions: [
            Icon(
              Icons.menu_outlined,
              color: Colors.orange,
            )
          ],
        ),
        body: Container(
          padding: EdgeInsets.only(
            top: 20,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: 20, top: 5),
                child: Text(
                  "Select Exam,",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Column(children: [
              Container(
                  margin: EdgeInsets.only(left: 18),
                  height: 250,
                  width: 380,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Center(
                        child: Text(
                          "Chapter",
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,),
                        ),
                      ),
                      SizedBox(height: 10,),
                      ListTile(
                        leading: Icon(Icons.drag_indicator_rounded),
                        title: Text("Practical Units",),
                        trailing: Container(
                          height: 35,
                          width: 80,
                         decoration: BoxDecoration( color: Colors.green,borderRadius: BorderRadius.all(Radius.circular(10))),
                          child: MaterialButton(
                            child: Text(
                              "Start",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      Divider(
                        thickness: 2,
                      ),
                      ListTile(
                        leading: Icon(Icons.drag_indicator_rounded),
                        title: Text("Physics Quantities",),
                        trailing: Container(
                          height: 35,
                          width: 80,
                          decoration: BoxDecoration( color: Colors.green,borderRadius: BorderRadius.all(Radius.circular(10))),
                          child: MaterialButton(
                            child: Text(
                              "Start",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      Divider(
                        thickness: 2,
                      ),
                      ListTile(
                        leading: Icon(Icons.drag_indicator_rounded),
                        title: Text("Findamental and derived quantities",),
                        trailing: Container(
                          height: 35,
                          width: 80,
                          decoration: BoxDecoration( color: Colors.green,borderRadius: BorderRadius.all(Radius.circular(10))),
                          child: MaterialButton(
                            child: Text(
                              "Start",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),


                      // Divider(
                      //   thickness: 2,
                      // )
                    ],
                  ))]),
              SizedBox(height: 10,),
        Container(
            margin: EdgeInsets.only(left: 18),
            height: 250,
            width: 380,
            color: Colors.white,
            child: Column(
              children: [
                Center(
                  child: Text(
                    "Module",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,),
                  ),
                ),
                SizedBox(height: 10,),
                ListTile(
                  leading: Icon(Icons.view_module_outlined),
                  title: Text("Physics and Measurement",),
                  trailing: Container(
                    height: 35,
                    width: 80,
                    decoration: BoxDecoration( color: Colors.green,borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: MaterialButton(
                      child: Text(
                        "Start",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Divider(
                  thickness: 2,
                ),
                ListTile(
                  leading: Icon(Icons.view_module_outlined),
                  title: Text("Rotational Motion",),
                  trailing: Container(
                    height: 35,
                    width: 80,
                    decoration: BoxDecoration( color: Colors.green,borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: MaterialButton(
                      child: Text(
                        "Start",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Divider(
                  thickness: 2,
                ),
                ListTile(
                  leading: Icon(Icons.view_module_outlined),
                  title: Text("fluid Mechanics",),
                  trailing: Container(
                    height: 35,
                    width: 80,
                    decoration: BoxDecoration( color: Colors.green,borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: MaterialButton(
                      child: Text(
                        "Start",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),



              ],
            ))
          ]),
        ));
  }
}
