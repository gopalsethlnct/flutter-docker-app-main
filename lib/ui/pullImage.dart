/* import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';


class PullImage extends StatefulWidget {
  @override
  _PullImageState createState() => _PullImageState();
}

class _PullImageState extends State<PullImage> {
  @override
  Widget build(BuildContext context) {
    var img_name = null;
    return Scaffold(
      backgroundColor: Colors.teal[100],
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Pull Image",
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
                      margin:
                          EdgeInsets.symmetric(vertical: 30, horizontal: 10),
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
                        onChanged: (val) {
                          img_name = val;
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
                      if (img_name == null) {
                        Fluttertoast.showToast(
                            msg: "Fields not be empty!",
                            gravity: ToastGravity.BOTTOM,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.white,
                            textColor: Colors.red,
                            fontSize: 20.0);
                      } else {
                        dockerCmd("pull $img_name");
                      }
                    },
                    child: Text('Pull'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      // color: Colors.blue,
    );
  }
} */

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'first.dart';

class PullImage extends StatefulWidget {
  @override
  _PullImageState createState() => _PullImageState();
}

class _PullImageState extends State<PullImage> {
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
                  " Pull Image",
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
                                labelText: 'Image Name :',
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
                                    "Pull",
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
