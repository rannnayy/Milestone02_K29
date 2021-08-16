import 'package:flutter/material.dart';
import 'package:clean_out_co/utils.dart';

class ProfilePage extends StatefulWidget {
  final isi = TextStyle(
    fontSize: 14.0,
    fontFamily: 'Abhaya Libre',
  );

  final judul = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 18.0,
    fontFamily: 'Abhaya Libre',
  );

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(26.0, 0, 26.0, 0),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(25.0, 17.0, 14.0, 0),
                      child: Text(
                  'Profile',
                  style: TextStyle(
                      fontSize: 48.0,
                      fontFamily: 'Abhaya Libre',
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
                ]),
              ),
            ),
            SizedBox(height: 90.0),
            Expanded(
              child: Stack(
                alignment: Alignment.center,
                fit: StackFit.expand,
                clipBehavior: Clip.none,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: MyColors.lightGreenColor,
                      borderRadius: BorderRadius.vertical(top: Radius.circular(30), bottom: Radius.zero),
                      ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget> [
                        SizedBox(height: 80),
                        Text(
                          'Doni Eka Fahmi',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Abhaya Libre',
                            fontSize: 32,

                          ),
                        ),
                        Text(
                          'Customer',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 16,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                        Text(
                          'sejak 2021',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 16,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                        SizedBox(height: 12.0),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 45.0),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Alamat e-mail: donief@gmail.com',
                                  style: TextStyle(
                                    fontFamily: 'Abhaya Libre',
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  'Nomor telepon: +62 819 444 556',
                                  style: TextStyle(
                                    fontFamily: 'Abhaya Libre',
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  'Lokasi: Bandung',
                                  style: TextStyle(
                                    fontFamily: 'Abhaya Libre',
                                    fontSize: 20,
                                  ),
                                ),
                                SizedBox(height: 20.0),
                                Text(
                                  'Statistik',
                                  style: TextStyle(
                                    fontFamily: 'Abhaya Libre',
                                    fontSize: 24,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Customer level: Rookie',
                                  style: TextStyle(
                                    fontFamily: 'Abhaya Libre',
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  'Kontribusi hari ini: 5.3 kg',
                                  style: TextStyle(
                                    fontFamily: 'Abhaya Libre',
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  'Total kontribusi: 53 kg',
                                  style: TextStyle(
                                    fontFamily: 'Abhaya Libre',
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  'Suhu tubuh (30/7/2021): 35 \u00B0C',
                                  style: TextStyle(
                                    fontFamily: 'Abhaya Libre',
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton.icon(
                              onPressed: () {
                                Navigator.pushReplacementNamed(context, '/');
                              },
                              icon: Icon(
                                Icons.edit,
                                color: MyColors.greenColor,
                              ),
                              label: Text(
                                'Edit',
                                style: TextStyle(
                                    color: MyColors.greenColor,
                                    fontFamily: 'Abhaya Libre',
                                    fontSize: 20.0),
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(30.0)
                                    )
                                ),
                              ),
                            ),
                            SizedBox(width: 100.0),
                            ElevatedButton.icon(
                              onPressed: () {
                                Navigator.pushReplacementNamed(context, '/');
                              },
                              icon: Icon(
                                Icons.save,
                                color: MyColors.greenColor,
                              ),
                              label: Text(
                                'Save',
                                style: TextStyle(
                                    color: MyColors.greenColor,
                                    fontFamily: 'Abhaya Libre',
                                    fontSize: 20.0),
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(30.0)
                                    )
                                ),
                              ),
                            ),
                          ],
                        ),
                      ]
                    ),
                  ),
                  Positioned(
                    top: -75,
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black54,
                            blurRadius: 10.0,
                            spreadRadius: 3.0,
                          ),
                        ],
                      ),
                      child: CircleAvatar(
                        radius: 75,
                        backgroundImage: AssetImage('assets/images/driver profile.png'),
                      ),
                    )),
                ],
              ),
            ),
          ]),
      ),
    );
  }
}
