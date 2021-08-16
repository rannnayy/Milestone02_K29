import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Widget myCard(String title, String imagePath, String desc, String nextPage){
    return Card(
      color: Color(0xffA2DEB8),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)
      ),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
        child: Column(
          children: [
            Text(
              '$title',
              style: TextStyle(
                  fontFamily: 'Abhaya Libre',
                  fontSize: 24,
                  fontWeight: FontWeight.w800
              ), //
            ),
            Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xff026928)
              ),
              padding: EdgeInsets.all(8),
              margin: EdgeInsets.all(5),
              child: Material(
                child: InkResponse(
                  onTap: () => Navigator.of(context).pushNamed(nextPage),
                  child: Image.asset(
                    imagePath,
                    scale: 3.0,
                    color: Colors.white,
                    height: 80,
                    width: 80,
                  ),
                ),
              ),
            ),
            Text(
              '$desc',
              style: TextStyle(
                  fontFamily: 'Abhaya Libre',
                  fontSize: 14,
                  fontWeight: FontWeight.w800
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                                'User 1',
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
                            backgroundImage: AssetImage('assets/images/driver profile.png')
                        ),
                        onPressed: () {
                          Navigator.of(context).pushNamed('/profilepage');
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
                        myCard('Pesan', 'assets/images/recycle white.png',
                            'Sudah pilah sampahmu? Pesan sekarang!', '/readyorder'),
                        myCard('Save Our Planet!', 'assets/images/white globe.png',
                            'Belum tahu cara memilah sampah yang benar? ikuti tutorial ini!', '/saveourplanet')
                      ],
                    )
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
