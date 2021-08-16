import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:clean_out_co/size_config.dart';
import 'package:clean_out_co/utils.dart';

class LangSetting extends StatefulWidget {
  static var routeName;
  @override
  _LangSettingState createState() => _LangSettingState();
}

enum Language { bahasa, uk, us, }

class _LangSettingState extends State<LangSetting> {
  static var routeName = '/langsetting';

  Language? _choice = Language.bahasa;

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
                  children: [
                    SizedBox(width: 10.0),
                    Expanded(
                      child: Text('Bahasa Indonesia',
                        style: TextStyle(
                          color: Colors.black,
                          letterSpacing: 1.0,
                          fontSize:20.0,
                          fontWeight: FontWeight.bold,
                        ),),
                    ),
                    new Radio<Language>(
                      value: Language.bahasa,
                      groupValue: _choice,
                      onChanged: (Language? value) {
                        setState(() {
                          _choice = value;
                        });
                      },
                      activeColor: Colors.green,
                    )
                  ],
                ),
                Divider(
                  height: 30.0,
                  color: Colors.grey[300],
                ),
                Row(
                  children: [
                    SizedBox(width: 10.0),
                    Expanded(
                      child: Text('English (UK)',
                        style: TextStyle(
                          color: Colors.black,
                          letterSpacing: 1.0,
                          fontSize:20.0,
                          fontWeight: FontWeight.bold,
                        ),),
                    ),
                    new Radio<Language>(
                      value: Language.bahasa,
                      groupValue: _choice,
                      onChanged: (Language? value) {
                        setState(() {
                          _choice = value;
                        });
                      },
                      activeColor: Colors.green,
                    )
                  ],
                ),
                Divider(
                  height: 30.0,
                  color: Colors.grey[300],
                ),
                Row(
                  children: [
                    SizedBox(width: 10.0),
                    Expanded(
                      child: Text('English (US)',
                        style: TextStyle(
                          color: Colors.black,
                          letterSpacing: 1.0,
                          fontSize:20.0,
                          fontWeight: FontWeight.bold,
                        ),),
                    ),
                    new Radio<Language>(
                      value: Language.bahasa,
                      groupValue: _choice,
                      onChanged: (Language? value) {
                        setState(() {
                          _choice = value;
                        });
                      },
                      activeColor: Colors.green,
                    )
                  ],
                ),
                Divider(
                  height: 30.0,
                  color: Colors.grey[300],
                ),
                SizedBox(height: 5.0,),
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