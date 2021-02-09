import 'package:flutter/material.dart';
import 'package:lets_move/slides/slide_1.dart';
import 'package:lets_move/util/img.dart';

class SlideItems1 extends StatelessWidget {
  final int index;
  SlideItems1(this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(16.0),
      margin: EdgeInsets.only(top: 16.0, left: 8.0, right: 8.0, bottom: 16.0),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              //shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(slideList[index].image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 32.0, bottom: 8.0),
            child: Text(
              slideList[index].title.toUpperCase(),
              //textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 20.0,
                color: Color(0xFFC41A3B),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, bottom: 0.0),
            child: Text(
              slideList[index].desc,
              //textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black87, fontSize: 14.0),
            ),
          ),
        ],
      ),
    );
  }
}

class SlideItems2 extends StatelessWidget {
  final int index;
  SlideItems2(this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(top: 0.0, bottom: 14.0, left: 0.0, right: 0.0),
      margin: EdgeInsets.only(top: 16.0, left: 8.0, right: 8.0, bottom: 16.0),
      child: Column(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(slideList2[index].image),
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
                slideList2[index].title.toUpperCase(),
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 0.0, bottom: 4.0, left: 16.0, right: 16.0),
              child: Text(
                slideList2[index].desc1.toUpperCase(),
                textAlign: TextAlign.left,
                style: TextStyle(color: Colors.black, fontSize: 14.0, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 0.0, bottom: 4.0, left: 16.0, right: 16.0),
              child: Text(
                slideList2[index].desc2,
                textAlign: TextAlign.left,
                style: TextStyle(color: Colors.black87, fontSize: 14.0),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 0.0, bottom: 0.0, left: 16.0, right: 16.0),
              child: Text(
                slideList2[index].rating,
                textAlign: TextAlign.left,
                style: TextStyle(color: Colors.black87, fontSize: 14.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SlideItems3 extends StatelessWidget {
  final int index;
  SlideItems3(this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFFFEEF0),
      padding: EdgeInsets.only(top: 28.0, bottom: 26.0, left: 16.0, right: 16.0),
      margin: EdgeInsets.only(top: 16.0, left: 8.0, right: 8.0, bottom: 16.0),
      child: Column(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: 100.0,
            child: CircleAvatar(
              child: Image(
                image: AssetImage(imgInvestor),
                height: 100.0,
                width: 100.0,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 16.0, bottom: 16.0, left: 0.0, right: 0.0),
              child: Text(
                slideList3[index].title.toUpperCase(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 0.0, bottom: 16.0, left: 0.0, right: 0.0),
              child: Text(
                slideList3[index].desc,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontSize: 16.0),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 0.0, bottom: 0.0, left: 0.0, right: 0.0),
              child: Text(
                slideList3[index].sign,
                textAlign: TextAlign.left,
                style: TextStyle(color: Color(0xFFE21D45), fontSize: 26.0, fontFamily: 'Allura'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SlideItems4 extends StatelessWidget {
  final int index;
  SlideItems4(this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(top: 0.0, bottom: 16.0, left: 0.0, right: 0.0),
      margin: EdgeInsets.only(top: 16.0, left: 8.0, right: 8.0, bottom: 16.0),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: 200,
            decoration: BoxDecoration(
              //shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(slideList4[index].image),
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
                slideList4[index].title,
                style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.black,
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
                slideList4[index].desc,
                style: TextStyle(color: Colors.black87, fontSize: 14.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
