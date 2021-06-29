import 'package:flutter/material.dart';
import 'package:mbls/pages/notification.dart';
import 'package:mbls/pages/profile.dart';

class DisplaySettings extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DisplaySettingsStateful(title: ''),
    );
  }
}

class DisplaySettingsStateful extends StatefulWidget {
  DisplaySettingsStateful({Key key, this.title}) : super(key: key);

  final String title;

  @override
  DisplaySettingsState createState() => DisplaySettingsState();
}

class DisplaySettingsState extends State<DisplaySettingsStateful> {
  bool flag=true;
  bool glflag=false;
  flagchange(bool nflag)
  {
    setState(() {

      flag=nflag;
    });
  }
  flagchange1(bool gflag)
  {
    setState(() {

      glflag=gflag;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
        leading: Icon(Icons.settings),
        title: Text("SETTINGS"),
        actions: [
          Container(
              width: 40,height: 20,  decoration: BoxDecoration(shape: BoxShape.circle,
          color: Colors.white60.withOpacity(0.2),
          ),
              child:Center(child:
          IconButton(
            icon: Icon(Icons.arrow_back),
              onPressed: () => {},
             )))
        ],
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 20),
            child: Center(
              child: Text(
                "ACCOUNT",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 380,
            height: 350,
            decoration: BoxDecoration(
                color: Color.fromRGBO(45, 55, 75, 1.0),
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                GestureDetector(
                  onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ProfileDisplay()));
                },child:
                ListTile(
                  leading: Icon(
                    Icons.lock,
                    color: Colors.lightBlueAccent,
                  ),
                  title: Text(
                    "Privacy",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),),
                Divider(),
                GestureDetector(onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SubjectNotification()));
                },
                  child:
                ListTile(
                  leading: Icon(
                    Icons.notification_important_outlined,
                    color: Colors.lightBlueAccent,
                  ),
                  title: Text(
                    "Notification",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),),
                Divider(),
                ListTile(
                  leading: Icon(
                    Icons.email_outlined,
                    color: Colors.lightBlueAccent,
                  ),
                  title: Text(
                    "Email Verification",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
                Divider(),
                ListTile(
                  leading: Icon(
                    Icons.payment,
                    color: Colors.lightBlueAccent,
                  ),
                  title: Text(
                    "Payment History",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
                Divider(),
                ListTile(
                  leading: Icon(
                    Icons.store,
                    color: Colors.lightBlueAccent,
                  ),
                  title: Text(
                    "Srorage",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              "SOCIAL",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 220,
            width: 380,
            decoration: BoxDecoration(
                color: Color.fromRGBO(45, 55, 75, 1.0),
                borderRadius: BorderRadius.circular(20)),
            child: Column(children: [
              ListTile(
                leading: Icon(
                  Icons.facebook,
                  color: Colors.lightBlueAccent,
                ),
                title: Text(
                  "Facebook",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),

                ),
                trailing: Switch(activeTrackColor: Colors.white,

                    inactiveThumbColor: Colors.redAccent,
                    value: flag, onChanged: (nflag){
                  flagchange(nflag);
                })
              ),
              Divider(),
              ListTile(
                  leading: Icon(
                    Icons.language_sharp,
                    color: Colors.lightBlueAccent,
                  ),
                  title: Text(
                    "Google",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),

                  ),
                  trailing: Switch(activeTrackColor: Colors.white,

                      inactiveThumbColor: Colors.redAccent,
                      value: glflag, onChanged: (gflag){
                        flagchange(gflag);
                      })
              ),
              Divider(),
              ListTile(
                  leading: Icon(
                    Icons.settings,
                    color: Colors.lightBlueAccent,
                  ),
                  title: Text(
                    "Settings",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),

                  ),
              
              ),
              Divider(),
            ],),
          )
        ],
      ),
    );
  }
}
