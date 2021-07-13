import 'package:flutter/material.dart';
import 'package:mbls/database/dataBaseConnection.dart';
import 'package:mbls/pages/homePage.dart';
import 'package:mbls/pages/bottomNavigatipPage.dart';
import 'package:mbls/pages/profile.dart';
import 'package:mbls/pages/settings.dart';
import 'package:mbls/pages/subscribedCourses.dart';

class UserRegistration extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: UserRegistrationStateful(title: ''),
    );
  }
}

class UserRegistrationStateful extends StatefulWidget {
  UserRegistrationStateful({Key key, this.title}) : super(key: key);

  final String title;

  @override
  UserRegistrationState createState() => UserRegistrationState();
}

class UserRegistrationState extends State<UserRegistrationStateful> {
  DateTime currentDate = DateTime.now();
  final name=TextEditingController();
  final email=TextEditingController();
  final pass=TextEditingController();
  final dob=TextEditingController();
  final city= TextEditingController();
  final phone=TextEditingController();
  void submit()
  {
    String name1=name.text;
    String email1=email.text;
    String pass1=pass.text;
    String dob1=dob.text;
    String city1=city.text;
    String phone1=phone.text;

    StudentDetail sd=new StudentDetail(name1, email1,pass1,city1,phone1);
    StudentDB.sdb.insertDb(sd);

  }

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
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF73AEF5),
              Color(0xFF61A4F1),
              Color(0xFF478DE0),
              Color(0xFF398AE5),
            ],
          ),
        ),
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.only(top: 80, left: 20),
                child: Row(
                  children: [
                    Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Sign Up",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 24),
                    )
                  ],
                )),
            SizedBox(
              height: 50,
            ),
            Container(
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 6.0,
                      offset: Offset(0, 2),
                    ),
                  ],
                  color: Color(0xFF6CA8F1),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              height: 60,
              width: 350,
              child: TextField(controller: name,
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'OpenSans',
                ),
                decoration: InputDecoration(
                    labelStyle: TextStyle(color: Colors.white54),
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.account_circle,
                      color: Colors.white,
                    ),
                    labelText: "Name"),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 6.0,
                      offset: Offset(0, 2),
                    ),
                  ],
                  color: Color(0xFF6CA8F1),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              height: 60,
              width: 350,
              child: TextField(controller: email,
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'OpenSans',
                ),
                decoration: InputDecoration(
                    labelStyle: TextStyle(color: Colors.white54),
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.white,
                    ),
                    labelText: "Email"),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 6.0,
                      offset: Offset(0, 2),
                    ),
                  ],
                  color: Color(0xFF6CA8F1),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              height: 60,
              width: 350,
              child: TextField(controller: pass,
                obscureText: true,
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'OpenSans',
                ),
                decoration: InputDecoration(
                    labelStyle: TextStyle(color: Colors.white54),
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.white,
                    ),
                    labelText: "Password"),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 6.0,
                        offset: Offset(0, 2),
                      ),
                    ],
                    color: Color(0xFF6CA8F1),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                height: 60,
                width: 350,
                child: TextButton(
                  onPressed: () {
                    _selectDate(context);
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.date_range,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "",
                        style: TextStyle(color: Colors.white.withOpacity(0.5)),
                      ),
                      SizedBox(width: 10,),
                      Text(
                       "01/11/1997",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                )),


            SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 6.0,
                      offset: Offset(0, 2),
                    ),
                  ],
                  color: Color(0xFF6CA8F1),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              height: 60,
              width: 350,
              child: TextField(controller: city,
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'OpenSans',
                ),
                decoration: InputDecoration(
                    labelStyle: TextStyle(color: Colors.white54),
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.location_city,
                      color: Colors.white,
                    ),
                    labelText: "City"),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 6.0,
                      offset: Offset(0, 2),
                    ),
                  ],
                  color: Color(0xFF6CA8F1),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              height: 60,
              width: 350,
              child: TextField(controller: phone,
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'OpenSans',
                ),
                decoration: InputDecoration(
                    labelStyle: TextStyle(color: Colors.white54),
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.phone,
                      color: Colors.white,
                    ),
                    labelText: "Phone"),
              ),
            ),
            SizedBox(
              height: 35,
            ),


            MaterialButton(
              minWidth: 250,
              height: 45,
              child: Text(
                "Sign Up",
                style: TextStyle(
                    fontFamily: 'OpenSans',
                    fontWeight: FontWeight.bold,
                    color: Colors.lightBlue,
                    fontSize: 16),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              color: Colors.white,
              onPressed: () => {submit()},
            ),
          ],
        ),
      ),
    );
  }
}
