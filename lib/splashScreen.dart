import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lets_move/signin.dart';
import 'package:lets_move/util/img.dart';
import 'package:lets_move/util/txt.dart';
// import 'package:shimmer/shimmer.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
        () => Navigator.push(context, MaterialPageRoute(builder: (context) => SignIn())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(begin: Alignment.topCenter, colors: [
              Color(0xFFC41A3B),
              //Color(0xFFE53457),
              Color(0xFFE21D45),
              //Color(0xFFF9D2DA)
              //Color(0xFF1B1F32)
            ])),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        // Shimmer.fromColors(
                        //   period: Duration(seconds: 3),
                        //   baseColor: Color(0xFFFFFFFF),
                        //   highlightColor: Color(0xFFE21D45),
                        //   child: 
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 75.0,
                            child: new Image(
                                image: new AssetImage(iconLogo),
                                height: 85.0,
                                width: 75.0,
                                fit: BoxFit.cover),
                          ),
                        // ),
                        Padding(
                          padding: EdgeInsets.only(top: 10.0),
                        ),
                        // Text(
                        //   Txt.appName,
                        //   style: TextStyle(
                        //       color: Colors.white,
                        //       fontWeight: FontWeight.bold,
                        //       fontSize: 24.0),
                        // )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircularProgressIndicator(
                        backgroundColor: Colors.white,
  valueColor: AlwaysStoppedAnimation<Color>(Color(0xFFE21D45)),
                      ),
                      //LinearProgressIndicator(),
                      Padding(
                        padding: EdgeInsets.only(top: 20.0),
                      ),
                      Text(
                        Txt.appDesc,
                        softWrap: true,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                            color: Colors.white),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
