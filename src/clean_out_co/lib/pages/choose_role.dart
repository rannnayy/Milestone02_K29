import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:clean_out_co/size_config.dart';
import 'package:clean_out_co/utils.dart';
import 'package:clean_out_co/widget/reusable_widgets_order.dart';

class ChooseRole extends StatefulWidget {
  static var routeName;

  @override
  _ChooseRoleState createState() => _ChooseRoleState();
}

class _ChooseRoleState extends State<ChooseRole> {
  static var routeName = "/chooserole";

  @override
  Widget build(BuildContext context) {
    SizeConfig _conf = SizeConfig(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: _conf.blockSizeVertical * 46.5,
                child: Container(
                  decoration: BoxDecoration(
                    color: createMaterialColor(MyColors.greenColor),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextDisplays(
                        textSize: _conf.blockSizeHorizontal * 15,
                        fontFam: 'Montserrat',
                        fontColor: Colors.white,
                        textData: 'Customer',
                        fontWgt: FontWeight.bold,
                        alignText: TextAlign.center,
                      ),
                      SizedBox(height: _conf.blockSizeVertical * 3, ),
                      IconsWContainer(
                        iconLoc: 'assets/images/driver profile.png',
                        iconDiameter: _conf.blockSizeHorizontal * 35,
                        nextPage: '/listeduser',
                        boxDiameter: _conf.blockSizeHorizontal * 35,
                      ),
                      SizedBox(height: _conf.blockSizeVertical * 3, ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: _conf.blockSizeHorizontal * 10,
                          right: _conf.blockSizeHorizontal * 10,
                        ),
                        child: TextDisplays(
                          textSize: _conf.blockSizeHorizontal * 4,
                          fontFam: 'Montserrat',
                          fontColor: Colors.white,
                          textData: 'Mulailah selamatkan bumi dengan memilah sampah dengan benar!',
                          fontWgt: FontWeight.w600,
                          alignText: TextAlign.center,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: _conf.blockSizeVertical * 1,
              ),
              SizedBox(
                height: _conf.blockSizeVertical * 46.5,
                child: Container(
                  decoration: BoxDecoration(
                    color: createMaterialColor(MyColors.orangeColor),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextDisplays(
                        textSize: _conf.blockSizeHorizontal * 15,
                        fontFam: 'Montserrat',
                        fontColor: Colors.black,
                        textData: 'Warrior',
                        fontWgt: FontWeight.bold,
                        alignText: TextAlign.center,
                      ),
                      SizedBox(height: _conf.blockSizeVertical * 3, ),
                      IconsWContainer(
                        iconLoc: 'assets/images/driver profile.png',
                        iconDiameter: _conf.blockSizeHorizontal * 35,
                        nextPage: '/listeduser',
                        boxDiameter: _conf.blockSizeHorizontal * 35,
                      ),
                      SizedBox(height: _conf.blockSizeVertical * 3, ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: _conf.blockSizeHorizontal * 10,
                          right: _conf.blockSizeHorizontal * 10,
                        ),
                        child: TextDisplays(
                          textSize: _conf.blockSizeHorizontal * 4,
                          fontFam: 'Montserrat',
                          fontColor: Colors.black,
                          textData: 'Mulailah selamatkan bumi dengan memilah sampah dengan benar!',
                          fontWgt: FontWeight.w600,
                          alignText: TextAlign.center,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}