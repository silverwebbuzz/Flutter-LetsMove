import 'package:flutter/material.dart';
import 'package:lets_move/signin.dart';
import 'package:lets_move/util/txt.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String title = 'SignUp';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomPadding: false,
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints:
              BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(begin: Alignment.topCenter, colors: [
              Color(0xFFC41A3B),
              Color(0xFFE21D45),
            ])),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 80,
                ),
                Padding(
                  padding:
                      EdgeInsets.only(top: 0, bottom: 20, left: 20, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "SignUp",
                        style: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "",
                        style: TextStyle(color: Colors.white, fontSize: 14),
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
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30))),
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: 20, bottom: 0, right: 20, left: 20),
                      child: Column(
                        children: <Widget>[
                          Container(
                            height: MediaQuery.of(context).size.height / 1.5,
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.only(top: 60),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width / 1.2,
                                  height: 45,
                                  padding: EdgeInsets.only(
                                      top: 0, left: 16, right: 16, bottom: 0),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(0.0),
                                          topRight: Radius.circular(15.0),
                                          bottomLeft: Radius.circular(15.0),
                                          bottomRight: Radius.circular(0.0)),
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
                                        Icons.person_outline,
                                        color: Color(0xFFC41A3B),
                                      ),
                                      hintText: 'First name',
                                      hintStyle: TextStyle(
                                          color: Colors.black87
                                          ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width / 1.2,
                                  height: 45,
                                  padding: EdgeInsets.only(
                                      top: 0, left: 16, right: 16, bottom: 0),
                                  margin: EdgeInsets.only(top: 16),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(0.0),
                                          topRight: Radius.circular(15.0),
                                          bottomLeft: Radius.circular(15.0),
                                          bottomRight: Radius.circular(0.0)),
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
                                        Icons.person,
                                        color: Color(0xFFC41A3B),
                                      ),
                                      hintText: 'Last name',
                                      hintStyle: TextStyle(
                                        color: Colors.black87
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width / 1.2,
                                  height: 45,
                                  padding: EdgeInsets.only(
                                      top: 0, left: 16, right: 16, bottom: 0),
                                  margin: EdgeInsets.only(top: 16),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(0.0),
                                          topRight: Radius.circular(15.0),
                                          bottomLeft: Radius.circular(15.0),
                                          bottomRight: Radius.circular(0.0)),
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
                                        Icons.email,
                                        color: Color(0xFFC41A3B),
                                      ),
                                      hintText: 'Email',
                                      hintStyle: TextStyle(
                                        color: Colors.black87
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width / 1.2,
                                  height: 45,
                                  padding: EdgeInsets.only(
                                      top: 0, left: 16, right: 16, bottom: 0),
                                  margin: EdgeInsets.only(top: 16),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(0.0),
                                          topRight: Radius.circular(15.0),
                                          bottomLeft: Radius.circular(15.0),
                                          bottomRight: Radius.circular(0.0)),
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
                                        Icons.lock_outline,
                                        color: Color(0xFFC41A3B),
                                      ),
                                      hintText: 'Password',
                                      hintStyle: TextStyle(
                                          color: Colors.black87
                                          ),
                                    ),
                                    obscureText: true,
                                  ),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width / 1.2,
                                  height: 45,
                                  padding: EdgeInsets.only(
                                      top: 0, left: 16, right: 16, bottom: 0),
                                  margin: EdgeInsets.only(top: 16),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(0.0),
                                          topRight: Radius.circular(15.0),
                                          bottomLeft: Radius.circular(15.0),
                                          bottomRight: Radius.circular(0.0)),
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
                                      hintText: 'Confirm password',
                                      hintStyle: TextStyle(
                                          color: Colors.black87
                                          ),
                                    ),
                                    obscureText: true,
                                  ),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width / 1.2,
                                  height: 45,
                                  padding: EdgeInsets.only(
                                      top: 0, left: 16, right: 16, bottom: 0),
                                  margin: EdgeInsets.only(top: 16),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(0.0),
                                          topRight: Radius.circular(15.0),
                                          bottomLeft: Radius.circular(15.0),
                                          bottomRight: Radius.circular(0.0)),
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
                                        Icons.call,
                                        color: Color(0xFFC41A3B),
                                      ),
                                      hintText: 'Contact number',
                                      hintStyle: TextStyle(
                                          color: Colors.black87
                                          ),
                                    ),
                                  ),
                                ), 
                                Spacer(),
                                Container(
                                  padding: EdgeInsets.all(16),
                                  width: double.infinity,
                                  child: RaisedButton(
                                    elevation: 5.0,
                                    padding: EdgeInsets.all(14),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(0.0),
                                          topRight: Radius.circular(15.0),
                                          bottomLeft: Radius.circular(15.0),
                                          bottomRight: Radius.circular(0.0)),
                                    ),
                                    color: Color(0xFFE21D45),
                                    child: Text(
                                      'Sign Up'.toUpperCase(),
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    onPressed: () {},
                                    // onPressed: () {
                                    //   Navigator.push(
                                    //       context,
                                    //       MaterialPageRoute(
                                    //           builder: (context) =>
                                    //               SnackBarMain()));
                                    //   //Navigator.of(context).pushNamed('HomePage');
                                    // },
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
                                            padding: const EdgeInsets.only(
                                                top: 0, right: 16, left: 16),
                                            child: new Text(
                                              Txt.alreadyUser,
                                              style: TextStyle(
                                                  color: Colors.black87, fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        SignIn()));
                                          },
                                          color: Colors.white,
                                          highlightColor: Colors.transparent,
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
