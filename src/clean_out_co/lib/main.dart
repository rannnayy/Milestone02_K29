import 'package:clean_out_co/pages/notif.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:clean_out_co/utils.dart';
import 'package:clean_out_co/pages/welcome_page.dart';
import 'package:clean_out_co/routes.dart';
import 'package:clean_out_co/pages/language.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CleanOut.Co',
      theme: ThemeData(
        canvasColor: Colors.transparent,
        fontFamily: 'Montserrat',
        primarySwatch: createMaterialColor(MyColors.greenColor),
      ),
      home: WelcomePage(),
      initialRoute: '/welcomepage',
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}