import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:clean_out_co/utils.dart';
import 'package:clean_out_co/welcome_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CleanOut.Co',
      theme: ThemeData(
        primarySwatch: createMaterialColor(MyColors.greenColor),
      ),
      home: WelcomePage(),
    );
  }
}