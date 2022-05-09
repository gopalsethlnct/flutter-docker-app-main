import 'package:fler/Screens/Welcome/welcome_screen.dart';
import 'package:fler/ui/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'first.dart';

class SplScr extends StatefulWidget {
  @override
  _SplScrState createState() => _SplScrState();
}

class _SplScrState extends State<SplScr> {
  @override
  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   backgroundColor: Colors.white,
    //   body: Column(children: <Widget>[
    //     SizedBox(height: 30,),
    //      Container(
    //           margin: EdgeInsets.only(bottom: 10,left: 70,top:40),
    //           child: Image.network(
    //               'https://raw.githubusercontent.com/gopalsethlnct/muiscapp/master/dockerimage.jpg'),
    //         ),
    //         SizedBox(height: 30,),
    //       Container(
    //         color: Colors.transparent,
    //           margin: EdgeInsets.only(bottom: 10,left: 70,top:40),
    //           child: Image.network(
    //               'https://raw.githubusercontent.com/gopalsethlnct/muiscapp/master/redhatlinux.png'),
    //         ),
    //   ],),
    // );
    return SplashScreen(
      seconds: 6,
      navigateAfterSeconds: new WelcomeScreen(),
      title: new Text(
        'Docker on Redhat',
        textScaleFactor: 2,
      ),
      image: new Image.network(
          'https://raw.githubusercontent.com/gopalsethlnct/muiscapp/master/dockerimage.jpg'),
      loadingText: Text("Loading"),
      photoSize: 100.0,
      loaderColor: Colors.blue,
    );
  }
}
