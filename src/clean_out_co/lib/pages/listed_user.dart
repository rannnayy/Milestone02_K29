import 'package:clean_out_co/widget/reusable_widgets_order.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:clean_out_co/size_config.dart';
import 'package:clean_out_co/utils.dart';

class ListedAsUser extends StatefulWidget {
  static var routeName;

  @override
  _ListedAsUserState createState() => _ListedAsUserState();
}

class _ListedAsUserState extends State<ListedAsUser> {
  static var routeName = '/listeduser';
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
  Widget build(BuildContext context) {
    SizeConfig _conf = SizeConfig(context);
    return Scaffold(
      backgroundColor: createMaterialColor(MyColors.greenColor),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            left: _conf.blockSizeHorizontal * 6,
            right: _conf.blockSizeHorizontal * 6,
            top: _conf.blockSizeVertical * 1,
            bottom: _conf.blockSizeVertical * 3,
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextDisplays(
                  textSize: _conf.blockSizeHorizontal * 7,
                  fontFam: 'Montserrat',
                  fontColor: Colors.white,
                  textData: 'Anda sudah\nterdaftar menjadi',
                  fontWgt: FontWeight.bold,
                  alignText: TextAlign.center,
                ),
                TextDisplays(
                  textSize: _conf.blockSizeHorizontal * 15,
                  fontFam: 'Montserrat',
                  fontColor: Colors.white,
                  textData: 'Customer',
                  fontWgt: FontWeight.bold,
                  alignText: TextAlign.center,
                ),
                SizedBox(height: _conf.blockSizeVertical * 2,),
                TextDisplays(
                  textSize: _conf.blockSizeHorizontal * 3,
                  fontFam: 'Montserrat',
                  fontColor: Colors.white,
                  textData: 'Kamu akan otomatis kembali menuju halaman login',
                  fontWgt: FontWeight.w500,
                  alignText: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}