import 'package:flutter/material.dart';

import '../standards/style_standards.dart';
import './nav_bar.dart';

class AppLayoutWidget extends StatelessWidget {
  final Widget child;
  final bool showNavBar;
  final String pageTitle;

  AppLayoutWidget({
    required this.child,
    required this.pageTitle,
    this.showNavBar = true,
  });

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).textScaleFactor);
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: StandardMargin.cardMargin,
          ),
          child: child,
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: StandardColors.standardWhite,
        title: Text(
          pageTitle,
          style: StandardTextStyles.title2.bold,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ),
      bottomNavigationBar: showNavBar ? NavBar() : null,
    );
  }
}
