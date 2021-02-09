import 'package:flutter/material.dart';
import 'package:lets_move/homepage.dart';
import 'package:lets_move/signup.dart';
import 'package:lets_move/util/txt.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  String title = 'SignIn';

  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _isLoading
          ? Center(child: CircularProgressIndicator())
          : SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                    maxHeight: MediaQuery.of(context).size.height),
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      gradient:
                          LinearGradient(begin: Alignment.topCenter, colors: [
                    Color(0xFFC41A3B),
                    Color(0xFFE21D45),
                    //Color(0xFFFAF2FB)
                  ])),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: 80,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: 0, bottom: 20, right: 20, left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "SignIn",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              // "Welcome Back",
                              "",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30.0),
                                  topRight: Radius.circular(30.0))),
                          child: Padding(
                            padding: EdgeInsets.only(
                                top: 20, bottom: 0, right: 20, left: 20),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height / 1.5,
                                  width: MediaQuery.of(context).size.width,
                                  padding: EdgeInsets.only(top: 60),
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.2,
                                        height: 45,
                                        padding: EdgeInsets.only(
                                            top: 0,
                                            left: 16,
                                            right: 16,
                                            bottom: 0),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(0.0),
                                                topRight: Radius.circular(15.0),
                                                bottomLeft:
                                                    Radius.circular(15.0),
                                                bottomRight:
                                                    Radius.circular(0.0)),
                                            color: Color(0xFFFBE0E6),
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.black12,
                                                  blurRadius: 5)
                                            ]),
                                        child: TextField(
                                          cursorColor: Color(0xFFC41A3B),
                                          textInputAction: TextInputAction.next,
                                          keyboardType:
                                              TextInputType.emailAddress,
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            icon: Icon(
                                              Icons.email,
                                              color: Color(0xFFC41A3B),
                                            ),
                                            //helperText: 'password',
                                            hintText: 'Email',
                                            hintStyle: TextStyle(
                                                color: Colors.black87
                                                ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.2,
                                        height: 45,
                                        padding: EdgeInsets.only(
                                            top: 0,
                                            left: 16,
                                            right: 16,
                                            bottom: 0),
                                        margin: EdgeInsets.only(
                                            top: 16, bottom: 16),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(0.0),
                                                topRight: Radius.circular(15.0),
                                                bottomLeft:
                                                    Radius.circular(15.0),
                                                bottomRight:
                                                    Radius.circular(0.0)),
                                            color: Color(0xFFFBE0E6),
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.black12,
                                                  blurRadius: 5)
                                            ]),
                                        child: TextField(
                                          cursorColor: Color(0xFFC41A3B),
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            icon: Icon(
                                              Icons.lock,
                                              color: Color(0xFFC41A3B),
                                            ),
                                            // suffixIcon: IconButton(
                                            //   onPressed: _toggleVisibility,
                                            //   icon: _isHidden
                                            //       ? Icon(
                                            //           Icons.visibility_off,
                                            //           color: Color(0xFF832685),
                                            //         )
                                            //       : Icon(
                                            //           Icons.visibility,
                                            //           color: Color(0xFF832685),
                                            //         ),
                                            // ),
                                            hintText: 'Password',
                                            hintStyle: TextStyle(
                                                color: Colors.black87
                                                ),
                                          ),
                                          // obscureText: _isHidden,
                                          //maxLength: 8,
                                          // obscureText: true,
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: <Widget>[
                                              new FlatButton(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 0, right: 0),
                                                  child: new Text(
                                                    'Forgot Password ?',
                                                    style: TextStyle(
                                                        color:
                                                            Colors.black87, fontWeight: FontWeight.bold),
                                                  ),
                                                ),
                                                onPressed: () {
                                                  Navigator.of(context)
                                                      .pushNamed('ForgotPage');
                                                },
                                                color: Colors.white,
                                                highlightColor:
                                                    Colors.transparent,
                                              ),
                                            ]),
                                      ),
                                      Spacer(),
                                      Container(
                                        padding: EdgeInsets.only(
                                            top: 0,
                                            bottom: 16,
                                            right: 16,
                                            left: 16),
                                        width: double.infinity,
                                        child: RaisedButton(
                                          elevation: 5.0,
                                          padding: EdgeInsets.all(14),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(0.0),
                                                topRight: Radius.circular(15.0),
                                                bottomLeft:
                                                    Radius.circular(15.0),
                                                bottomRight:
                                                    Radius.circular(0.0)),
                                          ),
                                          color: Color(0xFFE21D45),
                                          child: Text(
                                            'Sign In'.toUpperCase(),
                                            style: TextStyle(
                                                color: Colors.white,
                                                //fontSize: 14.0,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          onPressed: () {
                                            Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              HomePage()));
                                          },
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.center,
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: <Widget>[
                                              new FlatButton(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                    top: 0,
                                                    right: 16,
                                                    left: 16,
                                                  ),
                                                  child: new Text(
                                                    Txt.newUser,
                                                    style: TextStyle(
                                                        color:
                                                            Colors.black87,
                                                            fontWeight: FontWeight.bold)
                                                  ),
                                                ),
                                                onPressed: () {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              SignUp()));
                                                },
                                                color: Colors.white,
                                                highlightColor:
                                                    Colors.transparent,
                                              ),
                                            ]),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
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
