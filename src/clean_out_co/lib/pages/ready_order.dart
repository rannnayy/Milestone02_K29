import 'package:clean_out_co/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:clean_out_co/size_config.dart';

class ReadyOrder extends StatefulWidget {
  static var routeName;
  @override
  _ReadyOrderState createState() => _ReadyOrderState();
}

class _ReadyOrderState extends State<ReadyOrder> {
  static String routeName = "/readyorder";
  void afterDelay() {
    Future.delayed(Duration(seconds: 5), () {
      Navigator.of(context).pushNamed('/stepone');
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
        backgroundColor: createMaterialColor(MyColors.paleGreenColor),
        body: Stack(
          children: <Widget>[
            Center(
              child: Opacity(
                opacity: 0.4,
                child: Image(
                  image: AssetImage('assets/images/logooriginal.png'),
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
                        color: createMaterialColor(MyColors.greenColor),
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
                      onPressed: null, //Navigator.of(context).pushNamed('/homepage')
                      child: const Text("Click here to cancel"),
                    )
                  ],
                )
            )
          ],
        )
    );
  }
}