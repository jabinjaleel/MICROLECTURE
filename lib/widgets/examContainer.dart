import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExamContainer extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 50),
            padding: EdgeInsets.only(top: 10, left: 10),
            height: 130,
            width: 350,
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 6.0,
                    offset: Offset(0, 2),
                  ),
                ],
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                )),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(children: [
                  Text("25 QUESTION"),
                  SizedBox(
                    width: 190,
                  ),
                  Container(
                    width: 50,
                    height: 25,
                    color: Colors.lightBlueAccent,
                    child: Center(
                        child: Text(
                          "NEW",
                          style: TextStyle(color: Colors.white),
                        )),
                  )
                ]),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Physics and Measurement",
                  style: TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 8,
                ),
                Row(children: [
                  Icon(
                    Icons.lock_clock,
                    color: Colors.purple,
                  ),
                  Text("10 minutes allowed",
                      style: TextStyle(
                          color: Colors.purple,
                          fontWeight: FontWeight.bold)),
                  SizedBox(
                    width: 90,
                  ),
                  OutlineButton(
                      borderSide: BorderSide(
                        color: Colors.purpleAccent,
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.play_arrow,
                            color: Colors.purple,
                          ),
                          Text(
                            "Start",
                            style: TextStyle(
                                color: Colors.purple,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      onPressed: () => {
                        showCupertinoDialog(
                            context: context,
                            builder: (context) =>
                                CupertinoAlertDialog(
                                  title: Text("Confirm!"),
                                  content: Text(
                                      "Are you Ready for Exam?"),
                                  actions: [
                                    CupertinoDialogAction(
                                      child: Text("Yes"),
                                      onPressed: () =>
                                      {},
                                    ),
                                    CupertinoDialogAction(
                                      child: Text("No"),
                                      onPressed: () {},
                                    )
                                  ],
                                ))
                      },
                      shape: new RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(26.0),
                      ))
                ]),
              ],
            ),
          ),



        ],
      ),
    );
    // TODO: implement build
    throw UnimplementedError();
  }

}