import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:clean_out_co/utils.dart';
import 'package:clean_out_co/pages/welcome_page.dart';
import 'package:clean_out_co/pages/home.dart';
import 'package:clean_out_co/pages/profile_page.dart';

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
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomePage(),
        '/home': (context) => Home(),
        '/profile': (context) => ProfilePage(),
        // TODO: Tambah route lagi.
      }
    );
  }
}