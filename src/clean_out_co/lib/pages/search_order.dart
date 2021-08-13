import 'package:flutter/material.dart';
import 'package:clean_out_co/size_config.dart';
import 'package:clean_out_co/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:clean_out_co/popups/dialog.dart';

class SearchOrder extends StatefulWidget {
  static var routeName;
  @override
  _SearchOrderState createState() => _SearchOrderState();
}

class _SearchOrderState extends State<SearchOrder> {
  static String routeName = "/searchorder";

  @override
  Widget build(BuildContext context) {
    SizeConfig _conf = SizeConfig(context);
    return Scaffold(
      backgroundColor: createMaterialColor(MyColors.orangeColor),
      body: Center(
        child: Opacity(
          opacity: 0.4,
          child: Image(
            image: AssetImage('assets/images/logo white orange.png'),
            height: _conf.blockSizeVertical * 50,
          ),
        ),
      ),
      bottomSheet: BottomSheetBuilder(),
    );
  }
}

class BottomSheetBuilder extends StatefulWidget {
  @override
  _BottomSheetBuilder createState() => _BottomSheetBuilder();
}

class _BottomSheetBuilder extends State<BottomSheetBuilder>{
  void AfterDelay() {
    Future.delayed(Duration(seconds: 5), () {
      Navigator.of(context).pushNamed('/ongoingorder');
    });
  }
  @override
  void initState() {
    super.initState();
    AfterDelay();
  }
  Widget build(BuildContext context) {
    SizeConfig _conf = SizeConfig(context);
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(_conf.blockSizeHorizontal * 3),
          topRight: Radius.circular(_conf.blockSizeHorizontal * 3),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            spreadRadius: _conf.blockSizeVertical * 0.0001,
            blurRadius: _conf.blockSizeVertical * 0.3,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(_conf.blockSizeHorizontal * 3),
          topRight: Radius.circular(_conf.blockSizeHorizontal * 3
          ),
        ),
        child: Container(
          height: _conf.blockSizeVertical * 16,
          width: double.infinity,
          color: Colors.white,
          child: IntrinsicHeight(
            child: Column(
              children: [
                Expanded(
                  flex: 6,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 7,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                                flex: 7,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    top: _conf.blockSizeVertical * 3,
                                    bottom: 0,
                                    left: _conf.blockSizeHorizontal * 2,
                                  ),
                                  child: Text(
                                    "Searching nearby orders",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: _conf.blockSizeHorizontal * 5,
                                      color: Colors.black,
                                      fontFamily: 'Montserrat',
                                    ),
                                  ),
                                )
                            ),
                            Expanded(
                              flex: 3,
                              child: Padding(
                                padding: EdgeInsets.only(
                                  top: 0,
                                  bottom: 0,
                                  left: _conf.blockSizeHorizontal * 3,
                                ),
                                child: Text(
                                  "No orders nearby",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: _conf.blockSizeHorizontal * 4,
                                    color: createMaterialColor(MyColors.medGreyColor),
                                    fontFamily: 'Montserrat',
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Padding(
                          padding: EdgeInsets.only(
                            right: _conf.blockSizeHorizontal * 3,
                          ),
                          child: SizedBox(
                            width: _conf.blockSizeHorizontal * 25,
                            child: ElevatedButton(
                              onPressed: () => Dialogue.showDialogError, //Navigator.pop(context)
                              child: Text(
                                "CANCEL",
                                style: TextStyle(
                                  fontSize: _conf.blockSizeHorizontal * 4,
                                  color: Colors.grey,
                                  fontFamily: 'Montserrat',
                                ),
                              ),
                              style: ButtonStyle(
                                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                  backgroundColor: MaterialStateProperty.all<Color>(createMaterialColor(MyColors.lightGreyColor)),
                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20.0),
                                        side: BorderSide(color: Colors.grey),
                                      )
                                  )
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: _conf.blockSizeVertical * 2.25),
                    width: _conf.blockSizeHorizontal * 90,
                    height: _conf.blockSizeVertical * 5,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      child: LinearProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(createMaterialColor(MyColors.orangeColor)),
                        backgroundColor: createMaterialColor(MyColors.lightGreyColor),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

