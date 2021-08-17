import 'package:flutter/material.dart';
import '../utils.dart';
import '../widget/bottom_nav_bar.dart';

class Activity extends StatelessWidget {
  final isi = TextStyle(
    fontSize: 14.0,
    fontFamily: 'AbhayaLibre',
  );

  final judul = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 18.0,
    fontFamily: 'AbhayaLibre',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(26.0, 0, 26.0, 0),
          child: Container(
            decoration: BoxDecoration(
              color: MyColors.lightGreenColor,
              borderRadius: BorderRadius.all(Radius.circular(30.0)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(25.0, 17.0, 14.0, 0),
                  child: Text(
                    'Activity',
                    style: TextStyle(
                        fontSize: 48.0,
                        fontFamily: 'AbhayaLibre',
                        fontWeight: FontWeight.w700,
                        letterSpacing: 1.85,
                        shadows: [
                          Shadow(
                              blurRadius: 10.0,
                              color: Colors.grey,
                              offset: Offset(5.0, 5.0))
                        ]),
                  ),
                ),
                Divider(
                  height: 0.0,
                  color: Colors.black,
                  thickness: 1.0,
                  indent: 10.0,
                  endIndent: 10.0,
                ),
                SizedBox(
                  height: 15.0,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 0, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: MyColors.anotherGreen,
                        ),
                        child: Row(
                          children: [
                            Padding(
                              child: Image.asset('assets/Group282.png'),
                              padding: EdgeInsets.fromLTRB(17, 22, 12, 20),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Jl. Ganesa No.10'),
                                Text('Ongoin Delivery'),
                                SizedBox(
                                  height: 11,
                                ),
                                Text('Fri, 30 Jul 2021, 07.00 AM')
                              ],
                            ),
                            SizedBox(
                              width: 85,
                            ),
                            Image.asset('assets/DropDown.png')
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
