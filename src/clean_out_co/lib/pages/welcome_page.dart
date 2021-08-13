import 'package:flutter/material.dart';
import 'package:clean_out_co/size_config.dart';

class WelcomePage extends StatefulWidget {
  static var routeName;

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  static String routeName = "/welcomepage";
  void AfterDelay() {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.of(context).pushNamed('/readyorder');
    });
  }

  @override
  void initState() {
    super.initState();
    AfterDelay();
  }
  Widget build(BuildContext context){
    SizeConfig _conf = SizeConfig(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image(
          image: AssetImage('assets/images/logooriginal.png'),
          height: _conf.blockSizeVertical * 40,
        ),
      ),
    );
  }
}