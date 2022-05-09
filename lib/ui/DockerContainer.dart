/*import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'home.dart';
import 'package:fler/ui/test.dart';

class DockerContainer extends StatefulWidget {
  @override
  _DockerContainerState createState() => _DockerContainerState();
}

class _DockerContainerState extends State<DockerContainer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          "Containers",
          style: TextStyle(
            color: Colors.black87,
            fontSize: 20,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
      body: Center(
        child: Container(
          height: double.maxFinite,
          width: double.maxFinite,
          color: Colors.teal[200],
          child: ListView(
            children: <Widget>[
              Container(
                child: Image.network(
                    'https://raw.githubusercontent.com/gopalsethlnct/muiscapp/master/docker.png'),
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Container(
                  height: 80,
                  width: double.infinity,
                  child: FlatButton(
                    //color: Colors.blue[300],
                    onPressed: () {
                      /*      dockerCmd("ps");*/
                    },
                    child: Text(
                      "Running Container",
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 20,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Container(
                  height: 80,
                  width: double.infinity,
                  child: FlatButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/dc/lc");
                      // dockerCmd(
                      //     "run -dit --name myos111 vimal13/apache-webserver-php:latest"
                      //     );
                    },
                    child: Row(
                      children: <Widget>[
                        Container(
                          height: 80,
                          margin: EdgeInsets.symmetric(horizontal: 40),
                          child: Icon(
                            Icons.launch,
                            size: 50,
                          ),
                        ),
                        Text(
                          "Launch Container",
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
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: FlatButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/dc/sc");
                  },
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: 80,
                        margin: EdgeInsets.symmetric(horizontal: 40),
                        child: Icon(
                          Icons.highlight_off,
                          size: 50,
                        ),
                      ),
                      Text(
                        "Stop Container",
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
}
  */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DockerContainer extends StatefulWidget {
  @override
  _DockerContainerState createState() => _DockerContainerState();
}

class _DockerContainerState extends State<DockerContainer> {
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
            "CONTAINERS",
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
                            /*      dockerCmd("ps");*/
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
                                    Icons.autorenew,
                                    size: 40,
                                    color: Colors.blue,
                                  ),
                                ),
                                Container(
                                  color: Colors.white,
                                  padding: EdgeInsets.fromLTRB(30, 10, 4, 10),
                                  child: Text(
                                    "Running Container",
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
                            Navigator.pushNamed(context, "/dc/lc");
                            // dockerCmd(
                            //     "run -dit --name myos111 vimal13/apache-webserver-php:latest"
                            //     );
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
                                    Icons.launch,
                                    size: 40,
                                    color: Colors.blue,
                                  ),
                                ),
                                Container(
                                  color: Colors.white,
                                  padding: EdgeInsets.fromLTRB(30, 10, 4, 10),
                                  child: Text(
                                    "Launch Container",
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
                            Navigator.pushNamed(context, "/dc/sc");
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
                                    Icons.highlight_off,
                                    size: 40,
                                    color: Colors.blue,
                                  ),
                                ),
                                Container(
                                  color: Colors.white,
                                  padding: EdgeInsets.fromLTRB(30, 10, 4, 10),
                                  child: Text(
                                    "Stop Container",
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
                            Navigator.pushNamed(context, "/dc/allc");
                            // dockerCmd(
                            //     "run -dit --name myos111 vimal13/apache-webserver-php:latest"
                            //     );
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
                                    Icons.select_all,
                                    size: 40,
                                    color: Colors.blue,
                                  ),
                                ),
                                Container(
                                  color: Colors.white,
                                  padding: EdgeInsets.fromLTRB(30, 10, 4, 10),
                                  child: Text(
                                    "All Container",
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
