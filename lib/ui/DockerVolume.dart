import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DockerVolume extends StatefulWidget {
  @override
  _DockerVolumeState createState() => _DockerVolumeState();
}

class _DockerVolumeState extends State<DockerVolume> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.blue,
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
            "VOLUME",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
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
                            Navigator.pushNamed(context, "/dv/createpv");
                            /*dockerCmd("volume create myvol");*/
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
                                    Icons.create,
                                    size: 40,
                                    color: Colors.blue,
                                  ),
                                ),
                                Container(
                                  color: Colors.white,
                                  padding: EdgeInsets.fromLTRB(65, 10, 4, 10),
                                  child: Text(
                                    "Create",
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
                            /*dockerCmd("volume ls");*/
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
                                    Icons.remove_red_eye,
                                    size: 40,
                                    color: Colors.blue,
                                  ),
                                ),
                                Container(
                                  color: Colors.white,
                                  padding: EdgeInsets.fromLTRB(65, 10, 4, 10),
                                  child: Text(
                                    "View",
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
                            Navigator.pushNamed(context, "/dv/inspectpv");
                            /*dockerCmd("volume inspect myvol");*/
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
                                    Icons.youtube_searched_for,
                                    size: 40,
                                    color: Colors.blue,
                                  ),
                                ),
                                Container(
                                  color: Colors.white,
                                  padding: EdgeInsets.fromLTRB(30, 10, 4, 10),
                                  child: Text(
                                    "Inspect Volume",
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
