import 'package:flutter/material.dart';
import 'package:clean_out_co/size_config.dart';

class WelcomePage extends StatefulWidget {
  static var routeName;

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  static String routeName = "/welcomepage";
  void afterDelay() {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed('/login');
    });
  }

  @override
  void initState() {
    super.initState();
    afterDelay();
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