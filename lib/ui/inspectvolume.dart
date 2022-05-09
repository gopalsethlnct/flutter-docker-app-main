import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class InspectVolume extends StatefulWidget {
  @override
  _InspectVolumeState createState() => _InspectVolumeState();
}

class _InspectVolumeState extends State<InspectVolume> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
                  " Inspect Volume",
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
                                labelText: 'Volume Name :',
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
                                    "Inspect",
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
