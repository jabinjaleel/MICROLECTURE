import 'package:flutter/material.dart';
import 'package:mbls/main.dart';
import 'package:mbls/pages/homePage.dart';
import 'package:mbls/pages/bottomNavigatipPage.dart';
import 'package:mbls/pages/profile.dart';
import 'package:mbls/pages/settings.dart';
import 'package:mbls/pages/subscribedCourses.dart';
import 'package:mbls/pages/userregistration.dart';
void main() {
  runApp(LoginPage());
}

class LoginPage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPageStateful(title: ''),
    );
  }
}

class LoginPageStateful extends StatefulWidget {
  LoginPageStateful({Key key, this.title}) : super(key: key);

  final String title;

  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPageStateful> {
  bool first = false;
  void home(context)
  {
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>MyApp()));
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
            SizedBox(
              height: 100,
            ),
            Center(
              child: Text(
                "Sign In",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontFamily: 'OpenSans',
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(left: 35),
                child: Text(
                  "Username",
                  style: TextStyle(color: Colors.white),
                )),
            SizedBox(
              height: 10,
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
              child: TextField(
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
                    labelText: "Enter your Username"),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(left: 35),
                child: Text(
                  "Password",
                  style: TextStyle(color: Colors.white),
                )),
            SizedBox(
              height: 10,
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
              child: TextField(
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
                    labelText: "Enter your Password"),
              ),
            ),
            Align(
                alignment: Alignment.topRight,
                child: Container(
                  margin: EdgeInsets.only(top: 10, right: 30),
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                )),
            SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                margin: EdgeInsets.only(left: 50),
                child: Row(children: [
                  Theme(
                    data: ThemeData(unselectedWidgetColor: Colors.white),
                    child: Checkbox(
                      value: this.first,
                      checkColor: Colors.green,
                      activeColor: Colors.white,
                      onChanged: (value) {
                        setState(() {
                          this.first = value;
                        });
                      },
                    ),
                  ),
                  Text(
                    "Remenber Me",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ]),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            MaterialButton(
              minWidth: 320,
              height: 45,
              child: Text(
                "LOGIN",
                style: TextStyle(
                    fontFamily: 'OpenSans',
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey,
                    fontSize: 16),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              color: Colors.white,
              onPressed: () => {home(context)},
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "-OR-",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'OpenSans'),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Sign In With",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'OpenSans'),
            ),
            SizedBox(
              height: 25,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://p.kindpng.com/picc/s/179-1793639_facebook-logo-png-transparent-dark-blue-facebook-logo.png-download.png",
                      ),
                    ),
                    shape: BoxShape.circle,
                    color: Colors.white),
              ),
              SizedBox(
                width: 70,
              ),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://www.freepnglogos.com/uploads/google-logo-png/google-logo-icon-png-transparent-background-osteopathy-16.png",
                      ),
                    ),
                    shape: BoxShape.circle,
                    color: Colors.white),
              )
            ]),
            SizedBox(
              height: 20,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                "Don't have an Account?",
                style: TextStyle(color: Colors.white),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>UserRegistration()));
                  },
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ))
            ])
          ],
        ),
      ),
    );
  }
}
