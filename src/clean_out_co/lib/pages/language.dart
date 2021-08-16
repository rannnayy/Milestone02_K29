import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// INI GAK TAU KENAPA GAK BISA RADIO BUTTONSNYA
//SOURCCE = YT https://www.youtube.com/watch?v=zpgWAUzsz8Y&list=WL&index=40



void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new MyStateful(),
    );
  }
}

class MyStateful extends StatefulWidget {
  const MyStateful({Key? key}) : super(key: key);

  @override
  MyState createState() => new MyState();
}

class MyState extends State<MyStateful> {
  int groupValue;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('PREFERENCES',style: TextStyle(color: Colors.grey[500], fontWeight: FontWeight.bold,fontSize: 20),
        ),
        backgroundColor: Colors.white ,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(20.0,20.0,20.0,0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
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
                new Radio(
                  value: 1,
                  groupValue: groupValue,
                  onChanged: (int e) => something(e),
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
                new Radio(
                  value: 2,
                  groupValue: groupValue,
                  onChanged: (int e) => something(e),
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
                  child: Text('Engish (US)',
                    style: TextStyle(
                      color: Colors.black,
                      letterSpacing: 1.0,
                      fontSize:20.0,
                      fontWeight: FontWeight.bold,
                    ),),
                ),
                new Radio(
                  value: 3,
                  groupValue: groupValue,
                  onChanged: (int e) => something(e),
                  activeColor: Colors.green,
                )
              ],
            ),
            Divider(
              height: 30.0,
              color: Colors.grey[300],
            ),
            Divider(
              height: 270.0,
              color: Colors.white,
            ),
            MyStatelessWidget()
          ],
        ),
      ),
    );
  }
  void something(int e) {
    setState((){
      groupValue = e;
    });
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
