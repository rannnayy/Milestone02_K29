import 'dart:ui';
import 'package:clean_out_co/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void showDialog1(BuildContext context, {required String condition, required String nextPage}) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(32.0)),
        ),
        contentPadding: EdgeInsets.only(top: 10.0),
        title: Text(
          condition,
          textAlign: TextAlign.center,
        ),
        actions: <Widget>[
          Center(
            child: ElevatedButton(
              onPressed: () => ((nextPage == null) ? Navigator.pop(context) : Navigator.of(context).pushNamed(nextPage)),
              child: Text(
                "OK",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
              style: ButtonStyle(
                  alignment: Alignment.center,
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  backgroundColor: MaterialStateProperty.all<Color>(createMaterialColor(MyColors.greenColor)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        side: BorderSide(color: createMaterialColor(MyColors.greenColor)),
                      )
                  )
              ),
            ),
          ),
        ],
      );
    },
  );
}

void showDialog2(BuildContext context, {required String condition, required String nextPage1, required String nextPage2}) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(32.0)),
        ),
        contentPadding: EdgeInsets.only(top: 10.0),
        title: Text(
          condition,
          textAlign: TextAlign.center,
        ),
        actions: <Widget>[
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () => Navigator.of(context).pushNamed(nextPage1),
                  child: Text(
                    "YES",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  style: ButtonStyle(
                      alignment: Alignment.center,
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor: MaterialStateProperty.all<Color>(createMaterialColor(MyColors.orangeColor)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            side: BorderSide(color: createMaterialColor(MyColors.orangeColor)),
                          )
                      )
                  ),
                ),
              ),
              SizedBox(width: 20,),
              Expanded(
                child: ElevatedButton(
                  onPressed: () => Navigator.of(context).pushNamed(nextPage2),
                  child: Text(
                    "NO",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  style: ButtonStyle(
                      alignment: Alignment.center,
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor: MaterialStateProperty.all<Color>(createMaterialColor(MyColors.orangeColor)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            side: BorderSide(color: createMaterialColor(MyColors.orangeColor)),
                          )
                      )
                  ),
                ),
              ),
            ],
          ),
        ],
      );
    },
  );
}