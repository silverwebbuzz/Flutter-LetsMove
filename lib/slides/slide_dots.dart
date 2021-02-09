import 'package:flutter/material.dart';

class SlideDots extends StatelessWidget {
  final bool isActive;
  SlideDots(this.isActive);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
        duration: Duration(milliseconds: 150),
        margin: const EdgeInsets.symmetric(horizontal: 5),
        height: isActive ? 8 : 8,
        width: isActive ? 8 : 8,
        decoration: BoxDecoration(
          color: isActive ? Color(0xFFC41A3B) : Colors.grey,
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ));
  }
}
