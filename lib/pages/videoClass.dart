import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mbls/pages/homePage.dart';
import 'package:mbls/pages/profile.dart';
import 'package:mbls/pages/settings.dart';
import 'package:mbls/pages/subscribedCourses.dart';
import 'package:mbls/widgets/textfield.dart';
import 'package:video_player/video_player.dart';

class VideoClass extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: VideoClassStateful(title: ''),
    );
  }
}

class VideoClassStateful extends StatefulWidget {
  VideoClassStateful({Key key, this.title}) : super(key: key);

  final String title;

  @override
  VideoClassState createState() => VideoClassState();
}

class VideoClassState extends State<VideoClassStateful> {
  VideoPlayerController controller;
  Future<void> InitializeVideoPlayerfuture;

  @override
  void initState() {
    controller = VideoPlayerController.asset("assets/anime.webm");
    print(controller);
    InitializeVideoPlayerfuture = controller.initialize();
    controller.setLooping(true);

    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "JEE PHYSICS",
        ),
      ),
      body: Column(children: [
        FutureBuilder(
          future: InitializeVideoPlayerfuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return Stack(children: [
                AspectRatio(
                  aspectRatio: controller.value.aspectRatio,
                  child: VideoPlayer(controller),
                ),
                // Positioned(
                //     top: 20,
                //     left: 5,
                //     child: Container(
                //       padding: EdgeInsets.only(top: 10),
                //       decoration: BoxDecoration(
                //           color: Colors.black12.withOpacity(0.2),
                //           borderRadius: BorderRadius.all(Radius.circular(15))),
                //       height: 200,
                //       width: 400,
                //       child: Column(
                //         children: [
                //           Text(
                //             "What is the formula for Velocity?",
                //             style: TextStyle(
                //                 fontWeight: FontWeight.bold, fontSize: 16),
                //           ),
                //           SizedBox(
                //             height: 20,
                //           ),
                //           Container(
                //             child: Row(
                //               children: [
                //                 Radio(
                //                   value: true,
                //                   onChanged: (bool val) {
                //                     val = false;
                //                   },
                //                 ),
                //                 Text("Speed/Distance",
                //                     style:
                //                         TextStyle(fontWeight: FontWeight.bold)),
                //                 SizedBox(
                //                   width: 40,
                //                 ),
                //                 Radio(
                //                   value: true,
                //                   onChanged: (bool val) {
                //                     val = false;
                //                   },
                //                 ),
                //                 Text("Speed/Time",
                //                     style:
                //                         TextStyle(fontWeight: FontWeight.bold))
                //               ],
                //             ),
                //           ),
                //           Container(
                //             child: Row(
                //               children: [
                //                 Radio(
                //                   value: true,
                //                   onChanged: (bool val) {
                //                     val = false;
                //                   },
                //                 ),
                //                 Text("Time/Distance",
                //                     style:
                //                         TextStyle(fontWeight: FontWeight.bold)),
                //                 SizedBox(
                //                   width: 40,
                //                 ),
                //                 Radio(
                //                   value: true,
                //                   onChanged: (bool val) {
                //                     val = false;
                //                   },
                //                 ),
                //                 Text(
                //                   "Speed/Distance",
                //                   style: TextStyle(fontWeight: FontWeight.bold),
                //                 )
                //               ],
                //             ),
                //           ),
                //           Align(
                //             alignment: Alignment.bottomRight,
                //             child: OutlineButton(
                //               onPressed: () {},
                //               child: Text("Submit"),
                //             ),
                //           )
                //         ],
                //       ),
                //     ))
              ]);
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
        Divider(
          thickness: 2,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 6.0,
                    offset: Offset(0, 2),
                  ),
                ], shape: BoxShape.circle, color: Colors.yellow),
                child: Center(
                    child: IconButton(
                        color: Colors.white,
                        onPressed: () {
                          setState(() {
                            if (controller.value.isPlaying) {
                              controller.pause();
                            } else {
                              controller.play();
                            }
                          });
                        },
                        icon: Icon(Icons.fast_forward_outlined)))),
            SizedBox(
              width: 10,
            ),
            Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 6.0,
                        offset: Offset(0, 2),
                      ),
                    ],
                    shape: BoxShape.circle,
                    color: controller.value.isPlaying
                        ? Colors.yellow
                        : Colors.greenAccent),
                child: Center(
                    child: IconButton(
                        color: Colors.white,
                        onPressed: () {
                          setState(() {
                            if (controller.value.isPlaying) {
                              controller.pause();
                            } else {
                              controller.play();
                            }
                          });
                        },
                        icon: controller.value.isPlaying
                            ? Icon(Icons.pause)
                            : Icon(Icons.play_arrow)))),
            SizedBox(
              width: 10,
            ),
            Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 6.0,
                    offset: Offset(0, 2),
                  ),
                ], shape: BoxShape.circle, color: Colors.yellow),
                child: Center(
                    child: IconButton(
                        color: Colors.white,
                        onPressed: () {
                          setState(() {
                            if (controller.value.isPlaying) {
                              controller.pause();
                            } else {
                              controller.play();
                            }
                          });
                        },
                        icon: Icon(Icons.fast_rewind_outlined)))),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          padding: EdgeInsets.only(top: 20, left: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Details",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: "Module  :",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      )),
                  TextSpan(
                      text: "    Rotational Motion",
                      style: TextStyle(color: Colors.black, fontSize: 15))
                ]),
              ),
              SizedBox(
                height: 15,
              ),
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: "Chapter :",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      )),
                  TextSpan(
                      text: "     Overview of Rotational Motion",
                      style: TextStyle(color: Colors.black, fontSize: 15))
                ]),
              ),
              SizedBox(
                height: 15,
              ),
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: "Topic      :",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      )),
                  TextSpan(
                      text: "     Velocity",
                      style: TextStyle(color: Colors.black, fontSize: 15))
                ]),
              ),
              SizedBox(
                height: 15,
              ),
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: "Description:",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold)),
                  TextSpan(
                      text:
                          " Velocity, quantity that designates how fast and in what direction a point is moving. A point always moves in a direction that is tangent to its path.If a point moves a certain distance along its path in a given time interval, its average speed during the interval is equal to the distance moved divided by the time taken",
                      style: TextStyle(color: Colors.black, fontSize: 15))
                ]),
              ),
              SizedBox(
                height: 15,
              ),
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: "Duration:",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold)),
                  TextSpan(
                      text: " 30 Minutes",
                      style: TextStyle(color: Colors.black, fontSize: 15))
                ]),
              ),
            ],
          ),
          height: 380,
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: [Colors.white, Colors.white70]),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 6.0,
                  offset: Offset(0, 2),
                ),
              ],
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              )),
        )
        // Container(width: double.infinity,height: 380,decoration: BoxDecoration(color: Colors.blueGrey,borderRadius: BorderRadius.all(Radius.circular(15))),)
      ]),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)),
                ),
                backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
                context: context,
                builder: (context) {
                  return Container(
                      padding: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(),
                      height: 800,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              child: Center(
                                child: Text(
                                  "What is Velocity?",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              margin: EdgeInsets.only(bottom: 30, left: 140),
                              width: 250,
                              height: 40,
                              decoration: BoxDecoration(

                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(15),
                                  )),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 10),
                              child: Center(
                                child: Text(
                                  "The velocity of an object is the rate of change of its position with respect to a frame of reference, and is a function of time. Velocity is equivalent to a specification of an object's speed and direction of motion.",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              margin: EdgeInsets.only(bottom: 20, right: 150),
                              width: 280,
                              height: 110,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(15),
                                  )),
                            ),
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Row(children: [
                                  Container(
                                    width: 330,
                                    height: 90,
                                    child: TextField(
                                      decoration: InputDecoration(
                                        fillColor: Colors.white,
                                        filled: true,
                                        labelStyle:
                                            TextStyle(color: Colors.black),
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20))),
                                        prefixIcon: Icon(
                                          Icons.question_answer_outlined,
                                          color: Colors.black,
                                        ),
                                        labelText: "Question?",
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Container(
                                      padding:
                                          EdgeInsets.only(bottom: 30, left: 15),
                                      child: Container(
                                        alignment: Alignment.center,
                                        width: 50,
                                        height: 50,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.lightBlueAccent),
                                        child: IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.send_outlined,
                                            color: Colors.white,
                                          ),
                                        ),
                                      )),
                                ]))
                          ]));
                });
          },
          child: Icon(Icons.chat_bubble)
          //Image.network("https://cdn.imgbin.com/5/14/0/imgbin-internet-bot-computer-icons-chatbot-twitter-bot-license-ihyku5fsTacDq1TQAWdk3q95a.jpg",height: 40,width: 40,)
          ),
    );
  }
}
