import 'package:clean_out_co/widget/bottom_nav_bar.dart';
import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  static var routename;
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  static String routeName = "/homepage";


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home',
      home: BottomNavigationCleanOut(),
    );
  }
}
