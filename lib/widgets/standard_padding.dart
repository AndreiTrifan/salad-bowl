import 'package:flutter/material.dart';

class StandardPadding extends StatelessWidget {
  // const StandartPadding({Key? key}) : super(key: key);

  final Widget child;
  final double top;
  final double bottom;
  final double left;
  final double right;
  // double horizontal;
  // double vertical;

  StandardPadding({
    required this.child,
    required this.top,
    required this.bottom,
    required this.left,
    required this.right,
  });

  // StandardPadding.all(double value){
  //   this.top = value;
  // };

  // factory StandardPadding.all(this.child, double val){
  //   this.top = val;
  //   this.bottom = val;
  //   this.left = val;
  //   this.right = val;
  // };

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(top: top, bottom: bottom, left: left, right: right),
      // padding: Edge,
      child: child,
    );
  }
}
