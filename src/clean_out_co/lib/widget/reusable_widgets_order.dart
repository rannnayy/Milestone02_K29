import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:clean_out_co/utils.dart';
import 'package:clean_out_co/popups/dialog.dart';
import 'package:step_progress/step_progress.dart';

class VHImage extends StatelessWidget {
  final String imgData;
  final IconData iconData;
  final double iconSize;

  VHImage({
    required this.imgData,
    required this.iconData,
    required this.iconSize,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imgData, ),
          fit: BoxFit.fitWidth,
        ),
      ),
      child: Center(
        child: Icon(
          iconData,
          size: iconSize,
          color: createMaterialColor(MyColors.greenColor),
        ),
      ),
    );
  }
}

class IconsWContainer extends StatelessWidget {
  final String iconLoc;
  final double iconDiameter;
  final String nextPage;
  final String? typeSelected;
  final double boxDiameter;

  IconsWContainer({
    Key? key,
    required this.iconLoc,
    required this.iconDiameter,
    required this.nextPage,
    this.typeSelected,
    required this.boxDiameter,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: boxDiameter,
        width: boxDiameter,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: createMaterialColor(MyColors.greenColor)
        ),
        child: Material(
          child: InkResponse(
              highlightColor: createMaterialColor(MyColors.paleGreenColor),
              splashColor: createMaterialColor(MyColors.paleGreenColor),
              child: Padding(
                padding: EdgeInsets.all(boxDiameter-iconDiameter),
                child: Image(
                  image: AssetImage(iconLoc, ),
                  height: iconDiameter,
                  width: iconDiameter,
                  alignment: Alignment.center,
                ),
              ),
              onTap: () {
                if (typeSelected == null) {
                  Navigator.of(context).pushNamed(nextPage);
                }
                else if (typeSelected != null) {
                  Navigator.of(context).pushNamed(nextPage, arguments: typeSelected);
                }
              }
          ),
        ),
      ),
    );
  }
}

class IconLibWContainer extends StatelessWidget {
  final IconData iconData;
  final double iconDiameter;
  final String nextPage;
  final String? typeSelected;
  final double boxDiameter;

  IconLibWContainer({
    Key? key,
    required this.iconData,
    required this.iconDiameter,
    required this.nextPage,
    this.typeSelected,
    required this.boxDiameter,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: boxDiameter,
        width: boxDiameter,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: createMaterialColor(MyColors.greenColor)
        ),
        child: Material(
          child: InkResponse(
              highlightColor: createMaterialColor(MyColors.paleGreenColor),
              splashColor: createMaterialColor(MyColors.paleGreenColor),
              child: Icon(
                iconData,
                size: iconDiameter,
                color: Colors.white,
              ),
              onTap: () {
                if (typeSelected == null) {
                  showDialog1(
                    context,
                    condition: "Page Not Found",
                    nextPage: nextPage,
                  );
                }
                else if (typeSelected != null) {
                  Navigator.of(context).pushNamed(nextPage, arguments: typeSelected);
                }
              },
          ),
        ),
      ),
    );
  }

}

class IconsThumbnail extends StatelessWidget {
  final String iconLoc;
  final double iconDiameter;
  final double boxDiameter;

  IconsThumbnail({
    Key? key,
    required this.iconLoc,
    required this.iconDiameter,
    required this.boxDiameter,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: boxDiameter,
        width: boxDiameter,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: createMaterialColor(MyColors.greenColor)
        ),
        child: Padding(
          padding: EdgeInsets.all(boxDiameter-iconDiameter),
          child: Image(
            image: AssetImage(iconLoc, ),
            height: iconDiameter,
            width: iconDiameter,
            alignment: Alignment.center,
          ),
        )
      ),
    );
  }
}

class IconLibThumbnail extends StatelessWidget {
  final IconData iconData;
  final double iconDiameter;
  final double boxDiameter;

  IconLibThumbnail({
    Key? key,
    required this.iconData,
    required this.iconDiameter,
    required this.boxDiameter,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          height: boxDiameter,
          width: boxDiameter,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: createMaterialColor(MyColors.greenColor)
          ),
          child: Padding(
            padding: EdgeInsets.all(boxDiameter-iconDiameter),
            child: Icon(
              iconData,
              size: iconDiameter,
              color: Colors.white,
            ),
          )
      ),
    );
  }
}

class TextDisplays extends StatelessWidget {
  final String textData;
  final double textSize;
  final String fontFam;
  final Color fontColor;
  final FontWeight fontWgt;
  final TextAlign alignText;

  TextDisplays({
    Key? key,
    required this.textSize,
    required this.fontFam,
    required this.fontColor,
    required this.textData,
    required this.fontWgt,
    required this.alignText,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      textData,
      style: TextStyle(
        fontSize: textSize,
        color: fontColor,
        fontFamily: fontFam,
        fontWeight: fontWgt,
      ),
      textAlign: alignText,
    );
  }
}

class TextButtons extends StatelessWidget {
  final String textData;
  final double textSize;
  final String fontFam;
  final Color fontColor;
  final String nextPage;
  final FontWeight fontWgt;
  final String condition;

  TextButtons({
    Key? key,
    required this.textSize,
    required this.fontFam,
    required this.fontColor,
    required this.textData,
    required this.nextPage,
    required this.fontWgt,
    required this.condition,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => showDialog1(context, condition: condition, nextPage: nextPage), //Navigator.of(context).pushNamed(nextPage)
      child: Text(
        textData,
        style: TextStyle(
          decoration: TextDecoration.underline,
        ),
      ),
      style: TextButton.styleFrom(
        textStyle: TextStyle(
          fontSize: textSize,
          color: fontColor,
          fontFamily: fontFam,
          fontWeight: fontWgt,
        )
      )
    );
  }

}

class ProgressSteppers extends StatelessWidget {
  final int curStep;
  final int totStep;
  final Color lineColor;
  final Color frontColor;
  final Color backColor;
  final Color vColor;

  ProgressSteppers({
    required this.curStep,
    required this.totStep,
    required this.lineColor,
    required this.frontColor,
    required this.backColor,
    required this.vColor,
  });

  @override
  Widget build(BuildContext context) {
    return Progress(
      currentStep: curStep,
      totalStep: totStep,
      strokeColor: lineColor,
      valueColor: frontColor,
      backgroundColor: backColor,
      tickColor: vColor,
    );
  }
}