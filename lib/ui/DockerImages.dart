/* import 'first.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DockerImages extends StatefulWidget {
  @override
  _DockerImagesState createState() => _DockerImagesState();
}

class _DockerImagesState extends State<DockerImages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Images"),
      ),
      body: Center(
        child: Container(
          color: Colors.teal[200],
          child: ListView(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: Image.network(
                    'https://raw.githubusercontent.com/gopalsethlnct/muiscapp/master/docker.png'),
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                child: Container(
                  width: double.infinity,
                  height: 80,
                  child: FlatButton(
                    onPressed: () {
                      print("working");
                      dockerCmd("images");
                    },
                    child: Row(
                      children: <Widget>[
                        Container(
                          height: 80,
                          margin: EdgeInsets.symmetric(horizontal: 40),
                          child: Icon(
                            Icons.local_library,
                            size: 50,
                          ),
                        ),
                        Text(
                          "Local Images",
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 20,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                child: FlatButton(
                  onPressed: () {
                    print("working");
                    Navigator.pushNamed(context, "/di/push");
                    //dockerCmd("push image_name");
                  },
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: 80,
                        margin: EdgeInsets.symmetric(horizontal: 40),
                        child: Icon(
                          Icons.cloud_upload,
                          size: 50,
                        ),
                      ),
                      Text(
                        "Push Image",
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 20,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                child: FlatButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/di/pi");
                  },
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: 80,
                        margin: EdgeInsets.symmetric(horizontal: 40),
                        child: Icon(
                          Icons.get_app,
                          size: 50,
                        ),
                      ),
                      Text(
                        "Pull Image",
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 20,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                child: FlatButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/di/delete");
                  },
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: 80,
                        margin: EdgeInsets.symmetric(horizontal: 40),
                        child: Icon(
                          Icons.delete,
                          size: 50,
                        ),
                      ),
                      Text(
                        "Delete Image",
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 20,
                          fontStyle: FontStyle.italic,
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
} */

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DockerImage extends StatefulWidget {
  @override
  _DockerImageState createState() => _DockerImageState();
}

class _DockerImageState extends State<DockerImage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          titleSpacing: 0.0,
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.help,
                color: Colors.white,
              ),
              onPressed: () {
                /*Fluttertoast.showToast(
                    msg: "toast",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.CENTER,
                    backgroundColor: Colors.blue,
                    textColor: Colors.white,
                    fontSize: 20.0);*/
              },
            ),
          ],
          title: Text(
            "IMAGES",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.blue,
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
                      ],
                    ),
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://raw.githubusercontent.com/gopalsethlnct/muiscapp/master/docker.png'),
                      alignment: Alignment.topCenter,
                    ),
                  ),
                  child: SingleChildScrollView(
                    physics: AlwaysScrollableScrollPhysics(),
                    padding:
                        EdgeInsets.symmetric(horizontal: 25, vertical: 300),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          height: 25.0,
                        ),
                        RaisedButton(
                          onPressed: () {
                            print("working");
                            /*dockerCmd("images");*/
                          },
                          elevation: 10.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(25.0),
                            ),
                          ),
                          highlightElevation: 20.0,
                          highlightColor: Colors.blueGrey,
                          color: Colors.white,
                          padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.fromLTRB(50, 0, 10, 0),
                                  child: Icon(
                                    Icons.art_track,
                                    size: 40,
                                    color: Colors.blue,
                                  ),
                                ),
                                Container(
                                  color: Colors.white,
                                  padding: EdgeInsets.fromLTRB(30, 10, 4, 10),
                                  child: Text(
                                    "Local Images",
                                    textDirection: TextDirection.ltr,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 25.0,
                        ),
                        RaisedButton(
                          onPressed: () {
                            print("working");
                            //dockerCmd("push image_name");
                            Navigator.pushNamed(context, "/di/push");
                          },
                          elevation: 10.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(25.0),
                            ),
                          ),
                          highlightElevation: 20.0,
                          highlightColor: Colors.blueGrey,
                          color: Colors.white,
                          padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.fromLTRB(50, 0, 10, 0),
                                  child: Icon(
                                    Icons.cloud_upload,
                                    size: 40,
                                    color: Colors.blue,
                                  ),
                                ),
                                Container(
                                  color: Colors.white,
                                  padding: EdgeInsets.fromLTRB(30, 10, 4, 10),
                                  child: Text(
                                    "Push Images",
                                    textDirection: TextDirection.ltr,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 25.0,
                        ),
                        RaisedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, "/di/pi");
                          },
                          elevation: 10.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(25.0),
                            ),
                          ),
                          highlightElevation: 20.0,
                          highlightColor: Colors.blueGrey,
                          color: Colors.white,
                          padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: Row(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.fromLTRB(50, 0, 10, 0),
                                  child: Icon(
                                    Icons.get_app,
                                    size: 40,
                                    color: Colors.blue,
                                  ),
                                ),
                                Container(
                                  color: Colors.white,
                                  padding: EdgeInsets.fromLTRB(30, 10, 4, 10),
                                  child: Text(
                                    "Pull Images",
                                    textDirection: TextDirection.ltr,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 25.0,
                        ),
                        RaisedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, "/di/delete");
                          },
                          elevation: 10.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(25.0),
                            ),
                          ),
                          highlightElevation: 20.0,
                          highlightColor: Colors.blueGrey,
                          color: Colors.white,
                          padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: Row(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.fromLTRB(50, 0, 10, 0),
                                  child: Icon(
                                    Icons.delete,
                                    size: 40,
                                    color: Colors.blue,
                                  ),
                                ),
                                Container(
                                  color: Colors.white,
                                  padding: EdgeInsets.fromLTRB(30, 10, 4, 10),
                                  child: Text(
                                    "Delete Images",
                                    textDirection: TextDirection.ltr,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
