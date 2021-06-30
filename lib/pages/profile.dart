import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mbls/widgets/textfield.dart';

class ProfileDisplay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProfileDisplayStateful(title: ''),
    );
  }
}

class ProfileDisplayStateful extends StatefulWidget {
  ProfileDisplayStateful({Key key, this.title}) : super(key: key);

  final String title;

  @override
  ProfileDisplayState createState() => ProfileDisplayState();
}

class ProfileDisplayState extends State<ProfileDisplayStateful> {
  var name = TextEditingController();
  var email = TextEditingController();

  var phone = TextEditingController();

  var city = TextEditingController();
  var dob = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: double.infinity,
            height: double.infinity,
            child: Column(children: [
              Container(
                  padding: EdgeInsets.only(top: 50, left: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black,
                        ),
                      ),
                      Container(
                          padding: EdgeInsets.only(top: 12, left: 80),
                          child: Text(
                            "Profile Details",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          )),
                      SizedBox(
                        width: 60,
                      ),
                      Container(
                          width: 50,
                          height: 50,
                          child: OutlinedButton(
                            onPressed: () => {},
                            style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0))),
                            child: Icon(
                              Icons.save,
                              color: Colors.black,
                            ),
                          )),
                    ],
                  )),
              Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(shape: BoxShape.circle),
                  padding: EdgeInsets.only(top: 10),
                  child: Stack(children: [
                    Image.network(
                        " https://i.pinimg.com/736x/0a/53/c3/0a53c3bbe2f56a1ddac34ea04a26be98.jpg"),
                    Positioned(
                        top: 90,
                        left: 85,
                        child: Container(
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.deepOrange),
                            child: MaterialButton(
                              onPressed: () => {},
                              child: Icon(
                                CupertinoIcons.camera,
                                size: 18,
                                color: Colors.white,
                              ),
                            )))
                  ])),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                        colors: [Colors.deepPurple, Colors.blueGrey]),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25))),
                width: double.infinity,
                height: 500,
                child: Column(
                  children: [
                    DisplayTextfield(
                      con: name,
                      i1: Icons.account_circle_outlined,
                      label: "Name",
                    ),
                    DisplayTextfield(
                      con:email ,
                      i1: Icons.email,
                      label: "Email",
                    ),
                    DisplayTextfield(
                      con: phone,
                      i1: Icons.home,
                      label: "Phone",
                    ),

                    DisplayTextfield(
                      con: city,
                      i1: Icons.location_on,
                      label: "City",
                    ),
                    DisplayTextfield(
                      con: dob,
                      i1: Icons.calendar_today,
                      label: "DOB",
                    ),


                    //
                    // Align(
                    //   alignment: Alignment.bottomRight,
                    //   child: Container(
                    //     width: 200,
                    //     height: 65,
                    //     decoration: BoxDecoration(
                    //       gradient: LinearGradient(
                    //           begin: Alignment.centerLeft,
                    //           end: Alignment.centerRight,
                    //           colors: [
                    //             Colors.deepOrange,
                    //             Colors.deepOrangeAccent
                    //           ]),
                    //       borderRadius:
                    //           BorderRadius.only(topLeft: Radius.circular(30)),
                    //     ),
                    //     child: TextButton(
                    //       onPressed: () => {},
                    //       child: Text(
                    //         "Save",
                    //         style: TextStyle(color: Colors.white, fontSize: 20),
                    //       ),
                    //     ),
                    //   ),
                    // )
                  ],
                ),
              )
            ])));
  }
}
