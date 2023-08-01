import 'package:flutter/material.dart';

class NavBar extends AppBar {
  PreferredSizeWidget? bottomNavbar;
  String? titleNavBar;

  NavBar(
      {super.key,
      required BuildContext context,
      this.bottomNavbar,
      this.titleNavBar})
      : super(
            title: Row(children: [
              Image.asset(
                'images/logoUSAT.png',
                height: 23,
              ),
              Text(titleNavBar ?? 'USAT Calendar',
                  style: const TextStyle(
                    color: Colors.white,
                  ))
            ]),
            centerTitle: true,
            backgroundColor: Theme.of(context).primaryColor,
            bottom: bottomNavbar,
            actions: []);
}
