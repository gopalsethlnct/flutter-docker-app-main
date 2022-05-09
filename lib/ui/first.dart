import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;

void main() => runApp(MyApp());
var ipAd = "192.168.0.102";
dockerCmd(cmd) async {
  var url = "http://$ipAd/cgi-bin/docker.py?x=docker $cmd";

  var res = await http.get(url);
  print("working");
  print(res.body);
  Fluttertoast.showToast(
      msg: res.body,
      gravity: ToastGravity.TOP,
      timeInSecForIosWeb: 10,
      backgroundColor: Colors.black,
      textColor: Colors.yellow,
      fontSize: 16.0);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: DockerScreen(),
    );
  }
}

class DockerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DOCKER"),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.help,
              color: Colors.white,
            ),
            onPressed: () {
              Fluttertoast.showToast(
                  msg: "Toast",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.CENTER,
                  backgroundColor: Colors.blue,
                  textColor: Colors.white,
                  fontSize: 20.0);
            },
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text(
                "Username",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              accountEmail: Text(
                "abc@gmail.com",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text("N"),
              ),
            ),
            Divider(),
            ListTile(
              title: Text("Profile",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 25,
                  )),
              leading: Icon(
                Icons.person,
                color: Colors.amberAccent,
              ),
              onTap: () {
                Navigator.pushNamed(context, "/test/profile");
              },
            ),
            Divider(color: Colors.black87),
            ListTile(
              title: Text(
                "Setting",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 25,
                ),
              ),
              leading: Icon(Icons.settings, color: Colors.amberAccent),
              onTap: () {},
            ),
            Divider(color: Colors.black),
            ListTile(
              title: Text(
                "SignOut",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 25,
                ),
              ),
              trailing: Icon(Icons.input, color: Colors.blue),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xffffffff),
                        Color(0x9958CCED),
                        Color(0xff008080),
                        Color(0xff008080),
                        Color(0xff008080),
                      ]),
                  /*image: DecorationImage(
                    image: AssetImage("assets/images/image1.jpeg"),
                    alignment: Alignment.topCenter,
                  ), */
                ),
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 120),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: Image.network(
                            'https://raw.githubusercontent.com/abhya944/FLER/main/WhatsApp%20Image%202020-11-23%20at%2012.00.39%20AM.jpeg'),
                      ),
                      SizedBox(height: 50),
                      RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(25.0),
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, "/di");
                        },
                        textColor: Colors.blue,
                        color: Colors.white,
                        padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                color: Colors.white,
                                padding: EdgeInsets.fromLTRB(40, 10, 4, 10),
                                child: Text(
                                  "Docker Image",
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(90, 0, 10, 0),
                                child: Icon(
                                  Icons.wallpaper,
                                  color: Colors.blue,
                                  size: 40,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 40),
                      RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(25.0),
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, "/dc");
                        },
                        textColor: Colors.blue,
                        color: Colors.white,
                        padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                color: Colors.white,
                                padding: EdgeInsets.fromLTRB(40, 10, 4, 10),
                                child: Text(
                                  "Docker Container",
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(80, 0, 10, 0),
                                child: Icon(
                                  Icons.widgets,
                                  color: Colors.blue,
                                  size: 40,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 40),
                      RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(25.0),
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, "/dv");
                        },
                        textColor: Colors.blue,
                        color: Colors.white,
                        padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                color: Colors.white,
                                padding: EdgeInsets.fromLTRB(40, 10, 4, 10),
                                child: Text(
                                  "Docker PV",
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(120, 0, 8, 0),
                                child: Icon(
                                  Icons.filter_b_and_w,
                                  color: Colors.blue,
                                  size: 40,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 40),
                      RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(25.0),
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, "/dn");
                        },
                        textColor: Colors.blue,
                        color: Colors.white,
                        padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                color: Colors.white,
                                padding: EdgeInsets.fromLTRB(40, 10, 4, 10),
                                child: Text(
                                  "Docker Network",
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(80, 0, 10, 0),
                                child: Icon(
                                  Icons.language,
                                  color: Colors.blue,
                                  size: 40,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
