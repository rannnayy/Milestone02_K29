import 'package:flutter/material.dart';
import 'package:clean_out_co/size_config.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {

  @override
  Widget build(BuildContext context){
    SizeConfig _conf = SizeConfig(context);

    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushNamed(context, '/home');
    });

    return Scaffold(
      body: Center(
        child: Image(
          image: AssetImage('assets/images/logooriginal.png'),
          height: _conf.blockSizeVertical * 40,
        ),
      ),
    );
  }
}