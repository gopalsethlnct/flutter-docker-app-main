import 'package:fluttertoast/fluttertoast.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

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

class HomeApp extends StatefulWidget {
  @override
  _HomeAppState createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            Container(
              color: Colors.blue,
              padding: EdgeInsets.symmetric(horizontal: 10),
              alignment: Alignment.bottomLeft,
              height: 50,
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.account_circle,
                    size: 40,
                  ),
                  Text(
                    "Hello, User",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
            ),
            Card(
              child: Column(
                children: <Widget>[
                  Container(
                    height: 40,
                    margin: EdgeInsets.only(top: 10, right: 190),
                    child: Text(
                      "Profile",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 25,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                  Text(
                    "Host:              $ipAd",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 25,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
            ),
            Card(
                child: Container(
              color: Colors.white,
              height: 400,
            )),
            Container(
              padding: EdgeInsets.only(left: 20),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.settings,
                    size: 30,
                  ),
                  Container(
                    height: 40,
                    margin: EdgeInsets.only(top: 10, left: 10),
                    child: Text(
                      "Settings",
                      style: TextStyle(
                        //color: Colors.teal,
                        fontSize: 25,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 40,
              margin: EdgeInsets.only(top: 10, left: 20),
              child: Text(
                "Customer Service",
                style: TextStyle(
                  //color: Colors.teal,
                  fontSize: 25,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.help,
              size: 30,
              color: Colors.white,
            ),
            onPressed: () {
              dockerCmd("--help");
            },
          )
        ],
        title: Text(
          "Docker",
          textAlign: TextAlign.right,
        ),
      ),
      body: Container(
        color: Colors.blue[100],
        child: ListView(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: 10),
              child: Image.network(
                  'https://raw.githubusercontent.com/gopalsethlnct/muiscapp/master/docker.png'),
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                height: 100,
                width: double.infinity,
                child: FlatButton(
                  //color: Colors.blue[300],
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => DockerImages()),
                    // );
                  },
                  child: Image.network(
                      'https://raw.githubusercontent.com/gopalsethlnct/muiscapp/master/containerimage.jpg'),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Container(
                width: double.infinity,
                height: 100,
                child: FlatButton(
                  //color: Colors.blue[300],
                  onPressed: () {
                    Navigator.pushNamed(context, "/dc");
                  },
                  child: Image.network(
                      'https://raw.githubusercontent.com/gopalsethlnct/muiscapp/master/container.jpg'),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                height: 100,
                width: double.infinity,
                child: FlatButton(
                  color: Colors.white,
                  onPressed: () {
                    Navigator.pushNamed(context, "/dv");
                  },
                  child: Image.network(
                      'https://raw.githubusercontent.com/gopalsethlnct/muiscapp/master/pv.png'),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Container(
                height: 100,
                width: double.infinity,
                child: FlatButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/dn");
                  },
                  child: Image.network(
                      'https://raw.githubusercontent.com/gopalsethlnct/muiscapp/master/network.jpg'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
