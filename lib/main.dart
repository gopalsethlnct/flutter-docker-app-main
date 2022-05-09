import 'package:fler/Screens/Welcome/welcome_screen.dart';
import 'package:fler/ui/DockerContainer.dart';
import 'package:fler/ui/DockerImages.dart';
import 'package:fler/ui/DockerNetwork.dart';
import 'package:fler/ui/DockerVolume.dart';
import 'package:fler/ui/SplashScreen1.dart';
import 'package:fler/ui/allcontainer.dart';
import 'package:fler/ui/connectnetwork.dart';
import 'package:fler/ui/createnetwork.dart';
import 'package:fler/ui/createvolume.dart';
import 'package:fler/ui/deleteimage.dart';
import 'package:fler/ui/home.dart';
import 'package:fler/ui/inspectnetwork.dart';
import 'package:fler/ui/inspectvolume.dart';
import 'package:fler/ui/launchcontainer.dart';
import 'package:fler/ui/pullImage.dart';
import 'package:fler/ui/pushimage.dart';
import 'package:fler/ui/stopContainer.dart';
import 'package:fler/ui/first.dart';
import 'package:fler/ui/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:fler/ui/profile.dart';
import 'ansible.dart';
import 'Screens/Welcome/welcome_screen.dart';
import 'constants.dart';

main() {
  runApp(DockerAppS());
}

class DockerAppS extends StatefulWidget {
  @override
  _DockerAppSState createState() => _DockerAppSState();
}

class _DockerAppSState extends State<DockerAppS> {
  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Colors.blue);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "sp",
      routes: {
        "sp": (context) => SplScr(),
        "/login": (context) => WelcomeScreen(),
        "/": (context) => HomeApp(),
        "/dc": (context) => DockerContainer(),
        "/di": (context) => DockerImage(),
        "/dn": (context) => DockerNetwork(),
        "/dv": (context) => DockerVolume(),
        "/dc/lc": (context) => LaunchContainer(),
        "/dc/sc": (context) => StopContainer(),
        "/di/pi": (context) => PullImage(),
        "/test": (context) => DockerScreen(),
        "/testside": (context) => ConnectScreen(),
        "/test/profile": (context) => ProfileScreen(),
        "/ansible": (context) => SimpleScreen(),
        "/di/push": (context) => PushImage(),
        "/di/delete": (context) => DeleteImage(),
        "/dn/createnw": (context) => CreateNetwork(),
        "/dn/connectnw": (context) => ConnectNetwork(),
        "/dn/inspectnw": (context) => InspectNetwork(),
        "/dv/inspectpv": (context) => InspectVolume(),
        "/dv/createpv": (context) => CreateVolume(),
        "/dc/allc": (context) => AllContainer()
      },
    );
  }
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Auth',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: WelcomeScreen(),
    );
  }
}
