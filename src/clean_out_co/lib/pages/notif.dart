import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:clean_out_co/utils.dart';
import 'package:clean_out_co/size_config.dart';

class NotifSetting extends StatefulWidget {
  @override
  _NotifSettingState createState() => _NotifSettingState();
}

class _NotifSettingState extends State<NotifSetting> {
  bool isON = false;
  bool isON1 = false;
  bool isON2 = false;
  Widget myWidget = Icon(FontAwesomeIcons.solidBell, color: Colors.orange);
  Widget myWidget1 = Icon(FontAwesomeIcons.solidBell, color: Colors.orange);
  Widget myWidget2 = Icon(FontAwesomeIcons.solidBell, color: Colors.orange);

  @override
  Widget build(BuildContext context){
    SizeConfig _conf = SizeConfig(context);
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(32.0)),
            ),
            contentPadding: EdgeInsets.all(20.0),
            title: Text(
              'PREFERENCES',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: createMaterialColor(MyColors.interGreyColor),
              ),
            ),
            content: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AnimatedSwitcher(
                        child: myWidget,
                        duration: Duration(seconds: 1)
                    ),
                    SizedBox(width: 10.0),
                    Expanded(
                      child: Text('Promotion',
                        style: TextStyle(
                          color: Colors.black,
                          letterSpacing: 1.0,
                          fontSize:20.0,
                          fontWeight: FontWeight.bold,
                        ),),
                    ),
                    Switch(
                      activeColor: Colors.green[500],
                      inactiveTrackColor: Colors.white,
                      value: isON,
                      onChanged: (newValue) {
                        setState(() {
                          isON = newValue;
                          if (isON)
                            myWidget = Icon(FontAwesomeIcons.solidBellSlash, color: Colors.green[500],);
                          else
                            myWidget = Icon(FontAwesomeIcons.solidBell, color: Colors.green[500]);
                        });
                      },
                    )
                  ],
                ),
                Divider(
                  height: 30.0,
                  color: Colors.grey[300],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AnimatedSwitcher(
                        child:myWidget1,
                        duration: Duration(seconds: 1)
                    ),
                    SizedBox(width: 10.0),
                    Expanded(
                      child: Text('Orders',
                        style: TextStyle(
                          color: Colors.black,
                          letterSpacing: 1.0,
                          fontSize:20.0,
                          fontWeight: FontWeight.bold,
                        ),),
                    ),
                    Switch(
                      activeColor: Colors.green[500],
                      inactiveTrackColor: Colors.white,
                      value: isON1,
                      onChanged: (newValue) {
                        isON1 = newValue;
                        setState(() {
                          if(isON1)
                            myWidget1 = Icon(FontAwesomeIcons.solidBellSlash, color: Colors.green[500],);
                          else
                            myWidget1 = Icon(FontAwesomeIcons.solidBell, color: Colors.green[500],);
                        });
                      },
                    )
                  ],
                ),
                Divider(
                  height: 30.0,
                  color: Colors.grey[300],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AnimatedSwitcher(
                        child:myWidget2,
                        duration: Duration(seconds: 1)
                    ),
                    SizedBox(width: 10.0),
                    Expanded(
                      child: Text('Updates',
                        style: TextStyle(
                          color: Colors.black,
                          letterSpacing: 1.0,
                          fontSize:20.0,
                          fontWeight: FontWeight.bold,
                        ),),
                    ),
                    Switch(
                      activeColor: Colors.green[500],
                      inactiveTrackColor: Colors.white,
                      value: isON2,
                      onChanged: (newValue) {
                        isON2 = newValue;
                        setState(() {
                          if(isON2)
                            myWidget2 = Icon(FontAwesomeIcons.solidBellSlash, color: Colors.green[500],);
                          else
                            myWidget2 = Icon(FontAwesomeIcons.solidBell, color: Colors.green[500],);
                        });
                      },
                    )
                  ],
                ),
                Divider(
                  height: 30.0,
                  color: Colors.grey[300],
                ),
                SizedBox(height: 5.0,)
              ],
            ),
            actions: <Widget>[
              Row(
                children: [
                  Expanded(
                    child: Center(
                      child: TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text('Back', style: TextStyle(color: Colors.white, fontSize: _conf.blockSizeHorizontal * 5),),
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.green[500]),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(color: Colors.green)
                                )
                            )
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Expanded(
                    child: Center(
                      child: TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text('Apply', style: TextStyle(color: Colors.white, fontSize: _conf.blockSizeHorizontal * 5),),
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.green[500]),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(_conf.blockSizeHorizontal * 18),
                                    side: BorderSide(color: Colors.green)
                                )
                            )
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}