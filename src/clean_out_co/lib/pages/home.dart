import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Welcome back',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 14,
                                  color: Color(0xff898A8D)
                              ),
                            ),
                            SizedBox(height: 10.0,),
                            Text(
                                'Usada Pekora',
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600

                                )
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.transparent,
                        ),
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
                          shadowColor: MaterialStateProperty.all<Color>(Colors.transparent)
                        ),
                        child: CircleAvatar(
                          radius: 30.0,
                          backgroundImage: AssetImage('assets/images/pekora.jpg')
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/profile');
                        },
                      )
                    ],
                  ),
                  SizedBox(height: 30,),
                  Container(
                    height: 107,
                    width: 285,
                    color: Colors.transparent,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xff026928),
                          borderRadius: BorderRadius.all(Radius.circular(10.0))
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0,
                            vertical:15.0
                        ),
                        child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    child: Text(
                                      'Today\'s Contribution',
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize: 14,
                                          color: Colors.white
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      color: Colors.transparent,
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      '40 pts',
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize: 14,
                                          color: Colors.white
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                                  color: Colors.white
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      for (int i=0; i<10; i++) Icon(
                                        Icons.delete_outline,
                                        size: 25,
                                        color: (i<4) ? Colors.black : Colors.grey,
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ]
                        ),
                      ),
                    ),
                  )
                ],
              ),

            ),
            SizedBox(
                height: 10
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color(0xff026928),
                    borderRadius: BorderRadius.vertical(top: Radius.circular(30), bottom: Radius.zero)
                ),
                child: Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 30,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Apa kontribusimu hari ini?',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Container(
                          height: 200,
                          color: Colors.transparent,
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color(0xffA2DEB8)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Text(
                                    'Pesan',
                                    style: TextStyle(
                                        fontFamily: 'Abhaya Libre',
                                        fontWeight: FontWeight.w800,
                                        fontSize: 24
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 200,
                          color: Colors.transparent,
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color(0xffA2DEB8)
                            ),
                          ),
                        )
                      ],
                    )
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}
