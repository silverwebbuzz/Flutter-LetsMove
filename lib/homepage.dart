import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lets_move/drawer/drawer_block.dart';
import 'package:lets_move/drawer/drawer_item.dart';
import 'package:lets_move/slides/slide_1.dart';
import 'package:lets_move/slides/slide_dots.dart';
import 'package:lets_move/slides/slide_items_1.dart';
import 'package:lets_move/util/img.dart';

class HomePage extends StatefulWidget with DrawerStates {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  String title = 'Home';

  int _currentPage = 0;
  final PageController _pageController =
      PageController(initialPage: 0, viewportFraction: 0.9);

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 3), (Timer timer) {
      if (_currentPage < 2) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      _pageController.animateToPage(_currentPage,
          duration: Duration(seconds: 1), curve: Curves.fastOutSlowIn);
    });
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(builder: (context, orientation) {
      return Scaffold(
        key: _scaffoldKey,
        drawer: ClipPath(
          clipper: _DrawerClipper(),
          child: Drawer(
            child: SingleChildScrollView(
              child: Container(
                height: (orientation == Orientation.portrait)
                    ? MediaQuery.of(context).size.height
                    : MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(top: 48.0, bottom: 32.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        height: 40.0,
                        width: 40.0,
                        margin: EdgeInsets.all(20.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Theme.of(context).primaryColor),
                        child: Icon(
                          Icons.close,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    DrawerItem(
                      text: 'Home',
                      onPressed: () {
                        Navigator.of(context).pop();
                        BlocProvider.of(context)
                            .add(DrawerEvents.HomePageClickedEvent);
                      },
                    ),
                    DrawerItem(
                      text: 'Find Agent',
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    DrawerItem(
                      text: 'House Prices',
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    DrawerItem(
                      text: 'Commercial',
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    DrawerItem(
                      text: 'Overseas',
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    DrawerItem(
                      text: 'About Us',
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    Spacer(),
                    DrawerItem(
                      text: 'Sign out',
                      onPressed: () {
                        Navigator.of(context).pop();
                        _signOutDrawer(context);
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        appBar: AppBar(
          title: Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          // leading: Icon(Icons.menu),
          backgroundColor: Color(0xFFC41A3B),
          elevation: 0.0,
          leading: IconButton(
              icon: Container(
                padding: EdgeInsets.all(4.0),
                child: Icon(Icons.menu),
                // decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(4.0),
                //     border: Border.all(
                //         color: Theme.of(context).scaffoldBackgroundColor)),
              ),
              onPressed: () => _scaffoldKey.currentState.openDrawer()),
          actions: <Widget>[
            IconButton(
                icon: Container(
                  padding: EdgeInsets.all(4.0),
                  child: Icon(Icons.person),
                  // decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(4.0),
                  //     border: Border.all(
                  //         color: Theme.of(context).scaffoldBackgroundColor)),
                ),
                onPressed: () {}),
          ],
          //   flexibleSpace: Container(
          //     decoration: BoxDecoration(
          //     gradient: LinearGradient(begin: Alignment.topCenter, colors: [
          //       Color(0xFFC41A3B),
          //       Color(0xFFE21D45)
          //     ])
          //   ),
          // ),
          // leading: Builder(builder: (BuildContext context) {
          //   return IconButton(
          //     onPressed: () {
          //       _scaffoldKey.currentState.openDrawer();
          //     },
          //     //tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          //     icon: Icon(Icons.menu),
          //     //alignment: Alignment(-0.5, 0.0), // move icon a bit to the left
          //   );
          // }),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height: 325,
                child: Stack(
                  //overflow: Overflow.visible,
                  children: <Widget>[
                    Image(
                      image: AssetImage(mainBanner),
                      height: 200.0,
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      bottom: 0.0,
                      left: 0.0,
                      right: 0.0,
                      child: Center(
                        child: Container(
                          height: 175.0,
                          width: MediaQuery.of(context).size.width / 1.2,
                          color: Color(0xFFC41A3B),
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Text(
                                  'LetsMove for your happy',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 22.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width / 1.3,
                                height: 45,
                                padding: EdgeInsets.only(
                                    top: 0, bottom: 0, right: 16, left: 16),
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(0.0)),
                                ),
                                child: TextField(
                                  cursorColor: Color(0xFFC41A3B),
                                  textInputAction: TextInputAction.next,
                                  keyboardType: TextInputType.text,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    suffixIcon: Icon(
                                      Icons.search,
                                      color: Color(0xFFC41A3B),
                                    ),
                                    hintText: 'Search for your happy move...',
                                    hintStyle: TextStyle(color: Colors.black87),
                                    filled: true,
                                    fillColor: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0.0,
                      right: 55.0,
                      child: Center(
                        child: ButtonBar(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            RaisedButton(
                              child: Text(
                                'For Sale'.toUpperCase(),
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              color: Color(0xFF1B1F32),
                              onPressed: () {},
                            ),
                            RaisedButton(
                              child: Text(
                                'To Rent'.toUpperCase(),
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              color: Color(0xFF1B1F32),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 430.0,
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: Stack(children: <Widget>[
                        PageView.builder(
                          scrollDirection: Axis.horizontal,
                          controller: _pageController,
                          onPageChanged: _onPageChanged,
                          itemCount: slideList.length,
                          itemBuilder: (BuildContext context, int index) =>
                              SlideItems1(index),
                        ),
                      ]),
                    ),
                    Stack(
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.only(bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              for (int i = 0; i < slideList.length; i++)
                                if (i == _currentPage)
                                  SlideDots(true)
                                else
                                  SlideDots(false)
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 470.0,
                child: Container(
                  margin: EdgeInsets.only(
                      top: 8.0, bottom: 8.0, left: 16.0, right: 16.0),
                  padding: EdgeInsets.only(
                      top: 0.0, bottom: 0.0, left: 0.0, right: 0.0),
                  color: Color(0xFFFFEEF0),
                  // color: Color(0xFFFFD0D4),
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 250.0,
                        decoration: BoxDecoration(
                          //shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage(imgLive),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 8.0, bottom: 8.0, left: 16.0, right: 16.0),
                          child: Text(
                            'Where can I live ?',
                            style: TextStyle(
                                fontSize: 22.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 0.0, bottom: 8.0, left: 16.0, right: 16.0),
                          child: Text(
                            "We've created a new tool to help you easily find the areas that match your budget and needs.",
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 0.0, bottom: 0.0, left: 16.0, right: 16.0),
                          child: Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec dapibus tincidunt bibendum. Maecenas eu viverra orci. Duis diam leo, porta at justo vitae, euismod aliquam nulla.",
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.black54,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: FlatButton(
                          // color: Colors.blue,
                          textColor: Color(0xFFC41A3B),
                          // disabledColor: Colors.grey,
                          // disabledTextColor: Colors.black,
                          padding: EdgeInsets.only(
                              top: 8.0, bottom: 8.0, left: 16.0, right: 16.0),
                          splashColor: Color(0xFFF9D2DA),
                          onPressed: () {},
                          child: Text(
                            "Discover your perfect location >",
                            style: TextStyle(
                                fontSize: 14.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 8.0, bottom: 0.0, left: 28.0, right: 16.0),
                  child: Text(
                    'Featured properties',
                    textAlign: TextAlign.left,
                    style:
                        TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: 375,
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: Stack(children: <Widget>[
                        PageView.builder(
                          scrollDirection: Axis.horizontal,
                          controller: _pageController,
                          onPageChanged: _onPageChanged,
                          itemCount: slideList2.length,
                          itemBuilder: (BuildContext context, int index) =>
                              SlideItems2(index),
                        ),
                      ]),
                    ),
                    Stack(
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.only(bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              for (int i = 0; i < slideList2.length; i++)
                                if (i == _currentPage)
                                  SlideDots(true)
                                else
                                  SlideDots(false)
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              RaisedButton(
                // elevation: 0.0,
                color: Color(0xFFC41A3B),
                onPressed: () {},
                child: Text('View All Properties'.toUpperCase(),
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold)),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 8.0, bottom: 0.0, left: 28.0, right: 16.0),
                  child: Text(
                    'Meet our investors',
                    textAlign: TextAlign.left,
                    style:
                        TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: 400,
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: Stack(children: <Widget>[
                        PageView.builder(
                          scrollDirection: Axis.horizontal,
                          controller: _pageController,
                          onPageChanged: _onPageChanged,
                          itemCount: slideList3.length,
                          itemBuilder: (BuildContext context, int index) =>
                              SlideItems3(index),
                        ),
                      ]),
                    ),
                    Stack(
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.only(bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              for (int i = 0; i < slideList3.length; i++)
                                if (i == _currentPage)
                                  SlideDots(true)
                                else
                                  SlideDots(false)
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 8.0, bottom: 0.0, left: 28.0, right: 16.0),
                  child: Text(
                    'In the news',
                    textAlign: TextAlign.left,
                    style:
                        TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: 375,
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: Stack(children: <Widget>[
                        PageView.builder(
                          scrollDirection: Axis.horizontal,
                          controller: _pageController,
                          onPageChanged: _onPageChanged,
                          itemCount: slideList4.length,
                          itemBuilder: (BuildContext context, int index) =>
                              SlideItems4(index),
                        ),
                      ]),
                    ),
                    Stack(
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.only(bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              for (int i = 0; i < slideList4.length; i++)
                                if (i == _currentPage)
                                  SlideDots(true)
                                else
                                  SlideDots(false)
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              RaisedButton(
                // elevation: 0.0,
                color: Color(0xFFC41A3B),
                onPressed: () {},
                child: Text('Read News'.toUpperCase(),
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold)),
              ),
              SizedBox(
                height: 590.0,
                child: Container(
                  margin: EdgeInsets.only(
                      top: 8.0, bottom: 8.0, left: 16.0, right: 16.0),
                  padding: EdgeInsets.only(
                      top: 0.0, bottom: 0.0, left: 0.0, right: 0.0),
                  color: Color(0xFFFFEEF0),
                  // color: Color(0xFFFFD0D4),
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 250.0,
                        decoration: BoxDecoration(
                          //shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage(imgEnd),
                              fit: BoxFit.cover,
                              alignment: Alignment.centerLeft),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 8.0, bottom: 8.0, left: 16.0, right: 16.0),
                          child: Text(
                            'How to get started ?',
                            style: TextStyle(
                                fontSize: 22.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 0.0, bottom: 8.0, left: 16.0, right: 16.0),
                          child: Text(
                            "1. Create your investor profile",
                            style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.black87,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 0.0, bottom: 0.0, left: 16.0, right: 16.0),
                          child: Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec dapibus tincidunt bibendum. Maecenas eu viverra orci. Duis diam leo, porta at justo vitae, euismod aliquam nulla.",
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 8.0, bottom: 8.0, left: 16.0, right: 16.0),
                          child: Text(
                            "2. Speak with an expert",
                            style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.black87,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 0.0, bottom: 0.0, left: 16.0, right: 16.0),
                          child: Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec dapibus tincidunt bibendum. Maecenas eu viverra orci. Duis diam leo, porta at justo vitae, euismod aliquam nulla.",
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: RaisedButton(
                            // elevation: 0.0,
                            color: Color(0xFFC41A3B),
                            onPressed: () {},
                            child: Text('Create Your Profile'.toUpperCase(),
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
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
      );
    });
  }
}

void _signOutDrawer(BuildContext context) {
  showModalBottomSheet(
    isDismissible: false,
      context: context,
      builder: (context) {
        return Container(
          padding: EdgeInsets.only(left: 32.0, right: 32.0),
          // padding: EdgeInsets.all(32.0),
          color: Theme.of(context).primaryColor,
          height: 150.0,
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Text(
                'Are you sure you want to sign out ?',
                style: TextStyle(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Expanded(
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      color: Theme.of(context).scaffoldBackgroundColor,
                      child: Text(
                        'Sign out',
                        style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: OutlineButton(
                      highlightedBorderColor: Theme.of(context).scaffoldBackgroundColor,
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      borderSide: BorderSide(
                          color: Theme.of(context).scaffoldBackgroundColor),
                      color: Theme.of(context).primaryColor,
                      child: Text(
                        'Cancel',
                        style: TextStyle(
                            color: Theme.of(context).scaffoldBackgroundColor,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        );
      });
}

class _DrawerClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    final width = size.width;
    final height = size.height;

    path.moveTo(0, 0);
    path.quadraticBezierTo(0, 0, width - 60, 0);
    // path.quadraticBezierTo(width - 1, height / 2 - 20, width, height / 2);
    path.quadraticBezierTo(width + 1, height / 2, width - 60, height);
    path.quadraticBezierTo(0, height - 5, 0, height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }

}
