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
          "JEE MATHS",
        ),
      ),
      body: Column(children: [
        FutureBuilder(
          future: InitializeVideoPlayerfuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return AspectRatio(
                aspectRatio: controller.value.aspectRatio,
                child: VideoPlayer(controller),
              );
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
Divider(thickness: 2,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: controller.value.isPlaying
                        ? Colors.yellow
                        : Colors.greenAccent),
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
                        : Icon(Icons.play_arrow))),
          ],
        ),
        SizedBox(height: 10,),
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
                      height: 500,
                      child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Row(children: [
                            Container(
                              width: 330,
                              height: 90,
                              child: TextField(
                                decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  filled: true,
                                  labelStyle: TextStyle(color: Colors.black),
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
                            Container(padding: EdgeInsets.only(bottom: 30,left: 15),
                                child:
                            Container(
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
                          ])));
                });
          },
          child: Icon(Icons.chat_bubble)
          //Image.network("https://cdn.imgbin.com/5/14/0/imgbin-internet-bot-computer-icons-chatbot-twitter-bot-license-ihyku5fsTacDq1TQAWdk3q95a.jpg",height: 40,width: 40,)
          ),
    );
  }
}
