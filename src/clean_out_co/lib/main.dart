import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:clean_out_co/utils.dart';
import 'package:clean_out_co/pages/welcome_page.dart';
import 'package:clean_out_co/routes.dart';

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
        dividerTheme: DividerThemeData(
          space: 10,
          thickness: 1,
          color: createMaterialColor(MyColors.greenColor),
          indent: 20,
          endIndent: 20,
        ),
      ),
      home: WelcomePage(),
      initialRoute: '/welcomepage',
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}