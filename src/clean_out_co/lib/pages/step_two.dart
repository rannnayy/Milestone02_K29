// Warrior OTW (Step 2)
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:clean_out_co/widget/reusable_widgets_order.dart';
import 'package:clean_out_co/utils.dart';
import 'package:clean_out_co/size_config.dart';

class StepTwoOrder extends StatefulWidget {
  static var routeName;
  final String typeSelected;

  StepTwoOrder({
    Key? key,
    required this.typeSelected,
  }) : super(key: key);

  @override
  _StepTwoOrderState createState() => _StepTwoOrderState(typeSelected: this.typeSelected);
}

class _StepTwoOrderState extends State<StepTwoOrder> {
  static var routeName = "/steptwo";
  String typeSelected;

  _StepTwoOrderState({
    required this.typeSelected,
  });

  void AfterDelay() {
    Future.delayed(Duration(seconds: 5), () {
      Navigator.of(context).pushNamed('/stepthree', arguments: typeSelected);
    });
  }

  @override
  void initState() {
    super.initState();
    AfterDelay();
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
                      padding: EdgeInsets.all(0),
                      child: ProgressSteppers(
                        curStep: 0,
                        totStep: 5,
                        lineColor: createMaterialColor(MyColors.paleGreenColor),
                        frontColor: createMaterialColor(MyColors.greenColor),
                        backColor: Colors.transparent,
                        vColor: createMaterialColor(MyColors.paleGreenColor),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: _conf.blockSizeVertical * 1,
                        bottom: _conf.blockSizeVertical * 1,
                      ),
                      child: TextDisplays(
                        textSize: _conf.blockSizeHorizontal * 5,
                        fontFam: 'Abhaya Libre',
                        fontColor: Colors.black,
                        textData: "Pesananmu sedang diproses\nMenunggu Warrior",
                        fontWgt: FontWeight.w700,
                        alignText: TextAlign.center,
                      ),
                    ),
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
        )
      ),
    );
  }
}