/*import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'home.dart';

class LaunchContainer extends StatefulWidget {
  @override
  _LaunchContainerState createState() => _LaunchContainerState();
}

class _LaunchContainerState extends State<LaunchContainer> {
  @override
  Widget build(BuildContext context) {
    var imageName = null, osName = null;
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Launch Container",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: Card(
          margin: EdgeInsets.only(left: 20, right: 20),
          child: Container(
            height: 300,
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 30),
                      alignment: Alignment.centerRight,
                      height: 40,
                      width: 150,
                      child: Text(
                        "Image Name: ",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Container(
                        width: 100,
                        child: TextField(
                          autocorrect: false,
                          onChanged: (val) {
                            imageName = val;
                          },
                        )),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.centerRight,
                      height: 40,
                      width: 150,
                      child: Text(
                        "Os Name: ",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Container(
                      width: 100,
                      child: TextField(
                        onChanged: (val) {
                          osName = val;
                        },
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 30),
                  child: FlatButton(
                    color: Colors.grey,
                    onPressed: () {
                      if ((osName == null) || (imageName == null)) {
                        Fluttertoast.showToast(
                            msg: "Fields not be empty!",
                            gravity: ToastGravity.BOTTOM,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.white,
                            textColor: Colors.red,
                            fontSize: 20.0);
                      } else {
                        dockerCmd("run -dit --name $osName $imageName");
                        print("run -dit --name $osName $imageName");
                      }
                    },
                    child: Text('Launch'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
} */

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LaunchContainer extends StatefulWidget {
  @override
  _LaunchContainerState createState() => _LaunchContainerState();
}

class _LaunchContainerState extends State<LaunchContainer> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              // leading: Icon(Icons.arrow_back_ios),
              elevation: 0,
              backgroundColor: Colors.blue,
              actions: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.help,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Fluttertoast.showToast(
                        msg: "toast",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.CENTER,
                        backgroundColor: Colors.blue,
                        textColor: Colors.white,
                        fontSize: 20.0);
                  },
                ),
              ],
            ),
            body: Stack(children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height * 0.7,
                width: MediaQuery.of(context).size.width,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(
                      bottomLeft: const Radius.circular(70),
                      bottomRight: const Radius.circular(70),
                    ),
                  ),
                ),
              ),
              Column(mainAxisAlignment: MainAxisAlignment.center, children: <
                  Widget>[
                Text(
                  " Launch Container",
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height / 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    child: Container(
                      height: MediaQuery.of(context).size.width * 0.9,
                      width: MediaQuery.of(context).size.width * 0.8,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: TextFormField(
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                labelText: 'Container Name :',
                                labelStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: TextFormField(
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                labelText: 'Os Name :',
                                labelStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 60.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                height: 1.4 *
                                    (MediaQuery.of(context).size.height / 20),
                                width: 5 *
                                    (MediaQuery.of(context).size.width / 10),
                                margin: EdgeInsets.only(bottom: 20),
                                child: RaisedButton(
                                  elevation: 5.0,
                                  color: Colors.blue,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    "Launch",
                                    style: TextStyle(
                                      color: Colors.white,
                                      letterSpacing: 1.5,
                                      fontSize:
                                          MediaQuery.of(context).size.height /
                                              40,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ]),
            ])));
  }
}
