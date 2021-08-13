import 'dart:ffi';

import 'package:clean_out_co/popups/dialog.dart';
import 'package:clean_out_co/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:clean_out_co/size_config.dart';
import 'package:clean_out_co/routes.dart';

class ReadyOrder extends StatefulWidget {
  static var routeName;
  @override
  _ReadyOrderState createState() => _ReadyOrderState();
}

class _ReadyOrderState extends State<ReadyOrder> {
  static String routeName = "/readyorder";
  void AfterDelay() {
    Future.delayed(Duration(seconds: 5), () {
      Navigator.of(context).pushNamed('/searchorder');
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
        backgroundColor: createMaterialColor(MyColors.orangeColor),
        body: Stack(
          children: <Widget>[
            Center(
              child: Opacity(
                opacity: 0.4,
                child: Image(
                  image: AssetImage('assets/images/logo white orange.png'),
                  height: _conf.blockSizeVertical * 50,
                ),
              ),
            ),
            Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "READY?",
                      style: TextStyle(
                        fontSize: _conf.blockSizeHorizontal *13,
                        color: Colors.white,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    TextButton(
                        style: TextButton.styleFrom(
                          textStyle: TextStyle(
                            fontSize: _conf.blockSizeHorizontal * 6,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        onPressed: () => Navigator.of(context).pushNamed('/homepage'),
                        child: const Text("Click here to cancel")
                    )
                  ],
                )
            )
          ],
        )
    );
  }
}