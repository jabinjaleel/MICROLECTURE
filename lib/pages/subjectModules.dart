import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mbls/pages/homePage.dart';
import 'package:mbls/pages/profile.dart';
import 'package:mbls/pages/subscribedCourses.dart';

class SubModule extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SubModuleStateful(title: ''),
    );
  }
}

class SubModuleStateful extends StatefulWidget {
  SubModuleStateful({Key key, this.title}) : super(key: key);

  final String title;

  @override
  SubModuleState createState() => SubModuleState();
}

class SubModuleState extends State<SubModuleStateful> {
  // ignore: must_call_super
  void initState()
  {
    DiplaySubscribeState sb =new  DiplaySubscribeState();
    sb.p();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
          title: Text("JEE Physics"),
        ),
        body: Container(
          child: ListView(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            children: [
              ListTile(
                leading: Text(
                  "Physics and Measurement",
                  style: TextStyle(color: Colors.white60, fontSize: 18),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.view_module,
                  color: Colors.lightBlueAccent,
                ),
                title: Text(
                  "Physics and Measurement",
                  style: TextStyle(color: Colors.white),
                ),
                trailing: IconButton(onPressed: ()=>{},
                  icon: Icon(
                    Icons.verified_rounded,
                    color: Colors.blue,
                  ),
                ),
              ),
              Divider(
                thickness: 3,
              ),
              ListTile(
                leading: Icon(
                  Icons.view_module,
                  color: Colors.lightBlueAccent,
                ),
                title: Text(
                  "Findamental and derived quantities",
                  style: TextStyle(color: Colors.white),
                ),
                trailing: IconButton(onPressed: ()=>{},
                    icon: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                )),
              ),
              Divider(
                thickness: 3,
              ),
              ListTile(
                leading: Icon(
                  Icons.view_module,
                  color: Colors.lightBlueAccent,
                ),
                title: Text(
                  "System of Units",
                  style: TextStyle(color: Colors.white),
                ),
                trailing: IconButton(
                    icon: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                )),
              ),
              Divider(
                thickness: 3,
              ),
              ListTile(
                leading: Icon(
                  Icons.view_module,
                  color: Colors.lightBlueAccent,
                ),
                title: Text(
                  "Practical Units ",
                  style: TextStyle(color: Colors.white),
                ),
                trailing: IconButton(
                    icon: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                )),
              ),
              Divider(
                thickness: 3,
              ),
              ListTile(
                leading: Icon(
                  Icons.view_module,
                  color: Colors.lightBlueAccent,
                ),
                title: Text(
                  "Dimentions of physical Quantities",
                  style: TextStyle(color: Colors.white),
                ),
                trailing: IconButton(
                    icon: Icon(
                  Icons.verified_rounded,
                  color: Colors.blue,
                )),
              ),
              Divider(
                thickness: 3,
              ),
              ListTile(
                leading: Icon(
                  CupertinoIcons.book_solid,
                  color: Colors.redAccent,
                ),
                title: Text(
                  "Self Evaluation",
                  style: TextStyle(color: Colors.white),
                ),
                trailing: IconButton(
                    icon: Icon(
                      Icons.edit,
                      color: Colors.white,
                    )),
              ),
              ListTile(
                leading: Text(
                  "Rotational Motion",
                  style: TextStyle(color: Colors.white60, fontSize: 18),
                ),
              ),

              ListTile(
                leading: Icon(
                  Icons.view_module,
                  color: Colors.lightBlueAccent,
                ),
                title: Text(
                  "Rotational Motion Topics",
                  style: TextStyle(color: Colors.white),
                ),
                trailing: IconButton(
                    icon: Icon(
                       Icons.arrow_forward_ios,
                      color: Colors.white,
                    )),
              ),
              Divider(
                thickness: 3,
              ),
              ListTile(
                leading: Icon(
                  Icons.view_module,
                  color: Colors.lightBlueAccent,
                ),
                title: Text(
                  "Overview of Rotational Motion",
                  style: TextStyle(color: Colors.white),
                ),
                trailing: IconButton(
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    )),
              ),
            ],
          ),
        ));
  }
}
