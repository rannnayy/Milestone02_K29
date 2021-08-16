// Trash Arrived (Step 6)
import 'package:flutter/material.dart';
import 'package:clean_out_co/size_config.dart';
import 'package:clean_out_co/widget/reusable_widgets_order.dart';
import 'package:clean_out_co/utils.dart';
import 'package:flutter/cupertino.dart';

class StepSixOrder extends StatefulWidget {
  static var routeName;
  final String typeSelected;

  StepSixOrder({
    Key? key,
    required this.typeSelected,
  }) : super(key: key);

  @override
  _StepSixOrderState createState() => _StepSixOrderState(typeSelected: this.typeSelected);
}

class _StepSixOrderState extends State<StepSixOrder> {
  static var routeName = "/stepsix";
  String typeSelected;

  _StepSixOrderState({
    required this.typeSelected,
  });

  void afterDelay() {
    Future.delayed(Duration(seconds: 5), () {
      Navigator.of(context).pushNamed('/rating'); // /stepseven
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
      backgroundColor: createMaterialColor(MyColors.paleGreenColor),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            left: _conf.blockSizeHorizontal * 6,
            right: _conf.blockSizeHorizontal * 6,
            top: _conf.blockSizeVertical * 1,
            bottom: _conf.blockSizeVertical * 3,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(_conf.blockSizeHorizontal * 10)),
            child: Container(
              height: _conf.blockSizeVertical * 92,
              width: _conf.blockSizeHorizontal * 92,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(_conf.blockSizeHorizontal * 10)),
              ),
              child: Column(
                children: [
                  Expanded(
                    flex: 4,
                    child: VHImage(
                      imgData: 'assets/images/horizontalMap.png',
                      iconData: Icons.location_pin,
                      iconSize: _conf.blockSizeHorizontal * 10,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(0),
                    child: ProgressSteppers(
                      curStep: 4,
                      totStep: 5,
                      lineColor: createMaterialColor(MyColors.paleGreenColor),
                      frontColor: createMaterialColor(MyColors.greenColor),
                      backColor: Colors.transparent,
                      vColor: createMaterialColor(MyColors.paleGreenColor),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: _conf.blockSizeVertical * 2,
                      bottom: _conf.blockSizeVertical * 2,
                    ),
                    child: TextDisplays(
                      textSize: _conf.blockSizeHorizontal * 5,
                      fontFam: 'Abhaya Libre',
                      fontColor: Colors.black,
                      textData: "Sampah tiba di TPS\nTunggu valuasinya, ya!",
                      fontWgt: FontWeight.w700,
                      alignText: TextAlign.center,
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: EdgeInsets.only(
                      top: _conf.blockSizeVertical * 1,
                      bottom: _conf.blockSizeVertical * 2,
                      left: _conf.blockSizeHorizontal * 5,
                    ),
                    child: TextDisplays(
                      textSize: _conf.blockSizeHorizontal * 5,
                      fontFam: 'Abhaya Libre',
                      fontColor: Colors.black,
                      textData: "Informasi Warrior",
                      fontWgt: FontWeight.w700,
                      alignText: TextAlign.center,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconsThumbnail(
                        iconDiameter: 60,
                        boxDiameter: 60,
                        iconLoc: 'assets/images/driver profile.png',
                      ),
                      SizedBox(width: _conf.blockSizeHorizontal * 3,),
                      TextDisplays(
                        textSize: _conf.blockSizeHorizontal * 6,
                        fontFam: 'Abhaya Libre',
                        fontColor: Colors.black,
                        textData: "Andi Budi Cahya",
                        fontWgt: FontWeight.w700,
                        alignText: TextAlign.center,
                      ),
                    ],
                  ),
                  SizedBox(height: _conf.blockSizeVertical * 2,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextDisplays(
                        textSize: _conf.blockSizeHorizontal * 4,
                        fontFam: 'Abhaya Libre',
                        fontColor: Colors.black,
                        textData: "Alamat e-mail : andibc@gmail.com\nNomor telepon : +62 811 222 3333",
                        fontWgt: FontWeight.w700,
                        alignText: TextAlign.center,
                      ),
                      SizedBox(width: _conf.blockSizeHorizontal * 3,),
                      IconLibWContainer(
                        iconData: Icons.phone_rounded,
                        iconDiameter: _conf.blockSizeVertical * 4,
                        nextPage: "",
                        boxDiameter: _conf.blockSizeVertical * 6,
                      ),
                    ],
                  ),
                  SizedBox(height: _conf.blockSizeVertical * 2,),
                  Divider(),
                  Padding(
                    padding: EdgeInsets.only(
                      top: _conf.blockSizeVertical * 1,
                      bottom: _conf.blockSizeVertical * 1,
                    ),
                    child: TextDisplays(
                      textSize: _conf.blockSizeHorizontal * 5,
                      fontFam: 'Abhaya Libre',
                      fontColor: Colors.black,
                      textData: "Tipe Sampah",
                      fontWgt: FontWeight.w700,
                      alignText: TextAlign.center,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconsThumbnail(
                        iconDiameter: 50,
                        boxDiameter: 60,
                        iconLoc: (typeSelected == 'organic') ? 'assets/images/organic waste white.png' : 'assets/images/inorganic waste white.png',
                      ),
                      SizedBox(width: _conf.blockSizeHorizontal * 3,),
                      TextDisplays(
                        textSize: _conf.blockSizeHorizontal * 5,
                        fontFam: 'Abhaya Libre',
                        fontColor: Colors.black,
                        textData: (typeSelected == 'organic') ? "Organik" : "Anorganik",
                        fontWgt: FontWeight.w700,
                        alignText: TextAlign.center,
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: _conf.blockSizeVertical * 2,
                    ),
                    child: TextDisplays(
                      textSize: _conf.blockSizeHorizontal * 4,
                      fontFam: 'Abhaya Libre',
                      fontColor: Colors.black,
                      textData: "Bingung cara memilah sampah?",
                      fontWgt: FontWeight.w700,
                      alignText: TextAlign.center,
                    ),
                  ),
                  TextButtons(
                    textSize: _conf.blockSizeHorizontal * 4,
                    fontFam: 'Abhaya Libre',
                    fontColor: createMaterialColor(MyColors.greenColor),
                    textData: "Ikuti tutorial ini!",
                    nextPage: "/saveourplanet",
                    fontWgt: FontWeight.w700,
                    condition: "Save Our Planet?",
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}