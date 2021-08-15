// Choose typeSelected (Step 1)
import 'package:clean_out_co/widget/reusable_widgets_order.dart';
import 'package:flutter/material.dart';
import 'package:clean_out_co/size_config.dart';
import 'package:clean_out_co/utils.dart';

class StepOneOrder extends StatefulWidget {
  static var routeName;
  @override
  _StepOneOrderState createState() => _StepOneOrderState();
}

class _StepOneOrderState extends State<StepOneOrder> {
  static var routeName = '/steponeorder';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: createMaterialColor(MyColors.paleGreenColor),
      body: BodyStepOne(),
    );
  }
}

class BodyStepOne extends StatefulWidget {
  @override
  _BodyStepOneState createState() => _BodyStepOneState();
}

class _BodyStepOneState extends State<BodyStepOne> {
  @override
  Widget build(BuildContext context) {
    SizeConfig _conf = SizeConfig(context);
    return SafeArea(
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
            child: IntrinsicHeight(
              child: Column(
                children: [
                  Expanded(
                    flex: 4,
                    child: VHImage(
                      imgData: 'assets/images/verticalMap.png',
                      iconData: Icons.location_pin,
                      iconSize: _conf.blockSizeHorizontal * 10,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: _conf.blockSizeVertical * 3,
                      bottom: _conf.blockSizeVertical *2,
                      left: 0,
                      right: 0,
                    ),
                    child: TextDisplays(
                      textSize: _conf.blockSizeHorizontal * 5,
                      fontFam: 'Abhaya Libre',
                      fontColor: Colors.black,
                      textData: "Pilih jenis sampahmu",
                      fontWgt: FontWeight.w700,
                      alignText: TextAlign.center,
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: IconsWContainer(
                          iconLoc: "assets/images/organic waste white.png",
                          iconDiameter: _conf.blockSizeHorizontal * 25,
                          boxDiameter: _conf.blockSizeHorizontal * 30,
                          nextPage: '/steptwo',
                          typeSelected: 'organic',
                        ),
                      ),
                      Expanded(
                        child: IconsWContainer(
                          iconLoc: "assets/images/inorganic waste white.png",
                          iconDiameter: _conf.blockSizeHorizontal * 27,
                          boxDiameter: _conf.blockSizeHorizontal * 30,
                          nextPage: '/steptwo',
                          typeSelected: 'inorganic',
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: _conf.blockSizeVertical * 1,
                            bottom: _conf.blockSizeVertical * 2,
                          ),
                          child: TextDisplays(
                            textSize: _conf.blockSizeHorizontal * 5,
                            fontFam: 'Abhaya Libre',
                            fontColor: Colors.black,
                            textData: "Organik",
                            fontWgt: FontWeight.w700,
                            alignText: TextAlign.center,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: _conf.blockSizeVertical * 1,
                            bottom: _conf.blockSizeVertical * 2,
                          ),
                          child: TextDisplays(
                            textSize: _conf.blockSizeHorizontal * 5,
                            fontFam: 'Abhaya Libre',
                            fontColor: Colors.black,
                            textData: "Anorganik",
                            fontWgt: FontWeight.w700,
                            alignText: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                  TextDisplays(
                    textSize: _conf.blockSizeHorizontal * 4,
                    fontFam: 'Abhaya Libre',
                    fontColor: Colors.black,
                    textData: "Bingung cara memilah sampah?",
                    fontWgt: FontWeight.w700,
                    alignText: TextAlign.center,
                  ),
                  TextButtons(
                    textSize: _conf.blockSizeHorizontal * 4,
                    fontFam: 'Abhaya Libre',
                    fontColor: createMaterialColor(MyColors.greenColor),
                    textData: "Ikuti tutorial ini!",
                    nextPage: "/readyorder", // "/saveourplanet"
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