import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isON = false;
  bool isON1 = false;
  bool isON2 = false;
  Widget myWidget = Icon(FontAwesomeIcons.solidBell, color: Colors.orange);
  Widget myWidget1 = Icon(FontAwesomeIcons.solidBell, color: Colors.orange);
  Widget myWidget2 = Icon(FontAwesomeIcons.solidBell, color: Colors.orange);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('PREFERENCES',
                style: TextStyle(
                  color: Colors.grey[500],
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),),
              backgroundColor: Colors.white,
            ),
            body: Padding(
              padding: EdgeInsets.fromLTRB(20.0,20.0,20.0,0.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    children: [
                      AnimatedSwitcher(
                          child:myWidget,
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
                          isON = newValue;
                          setState(() {
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
                  Divider(
                    height: 200.0,
                    color: Colors.white,
                  ),
                  MyStatelessWidget()
                ],
              ),
            )
        )
    );
  }
}


class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton.icon(
          onPressed:() {},
          icon: Icon(FontAwesomeIcons.angleLeft, color: Colors.green[500]),
          label: Text('Back', style: TextStyle(color: Colors.green[500])),
          style: ButtonStyle(
            shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: Colors.green),
                )
            ),
          ),
        ),
        SizedBox(width: 180,),
        TextButton.icon(
          onPressed:() {
            showDialog(
              context: context,
              builder: (context) {
                return Center(
                  child: AlertDialog(
                    content: Container(
                      width: 60.0,
                      height: 30.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      ),
                      child:
                      Center(child: Text('Changes Saved', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
                    ),
                    actions: [
                      Center(
                        child: TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('OK', style: TextStyle(color: Colors.white),),
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
                    ],
                  ),
                );
              },
            );
          },
          icon: Icon(FontAwesomeIcons.check, color: Colors.green[500],),
          label: Text('Apply', style: TextStyle(color: Colors.green[500])),
          style: ButtonStyle(
            shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.green)
                )
            ),
          ),
        ),
      ],
    );
  }
}