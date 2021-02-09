import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lets_move/splashScreen.dart';

void main() {
  //StatusBar Overlay
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  // Portrait Mode Only
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(new MyApp());
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Effra',
      primaryColor: Color(0xFFC41A3B),
          primaryColorLight: Color(0xFFE21D45),
          //accentColor: Color(0xFFFAF2FB),
          ),
      title: 'Flutter Demo',
      home: SplashScreen(),
    );
  }
}