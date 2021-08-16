import 'package:flutter/material.dart';
import '../utils.dart';

class SaveOurPlanet extends StatefulWidget {
  static var routeName;

  @override
  _SaveOurPlanetState createState() => _SaveOurPlanetState();
}

class _SaveOurPlanetState extends State<SaveOurPlanet> {
  static var routeName = '/saveourplanet';

  final isi = TextStyle(
    fontSize: 16.0,
    fontFamily: 'AbhayaLibre',
  );

  final judul = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 16.0,
    fontFamily: 'AbhayaLibre',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(26.0, 26.0, 26.0, 0),
          child: SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(25.0, 17.0, 14.0, 10.0),
                    child: Text(
                      'Save Our Planet',
                      style: TextStyle(
                          fontSize: 40.0,
                          fontFamily: 'AbhayaLibre',
                          fontWeight: FontWeight.w700,
                          letterSpacing: 1.5,
                          shadows: [
                            Shadow(
                                blurRadius: 10.0,
                                color: Colors.grey,
                                offset: Offset(2.0, 2.0))
                          ]),
                      textAlign: TextAlign.center,
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
                    padding: const EdgeInsets.fromLTRB(14.0, 0, 14, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Tonton video ini, yuk!',
                          style: judul,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Image.asset('assets/images/save our planet.png', scale: 0.5,),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Inisiatif Satu Peta di Tingkat Tapak: Sumber Hidup dan Adat Kita',
                          style: judul,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Transcript isi videonya pake gdocs dong? Wkwkwk aku ngga nemu yg lain dari WRI Indonesiaa makasiii -R',
                          style: isi,
                          textAlign: TextAlign.justify,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Bacaan lebih lanjut bisa lihat di sini',
                          style: isi,
                          textAlign: TextAlign.justify,
                        ),
                        Text(
                          'Referensi: WRI Indonesia',
                          style: isi,
                          textAlign: TextAlign.justify,
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        ElevatedButton.icon(
                            onPressed: () {
                              Navigator.pushReplacementNamed(context, '/');
                            },
                            icon: Icon(
                              Icons.arrow_back_ios_new,
                              color: MyColors.greenColor,
                            ),
                            label: Text(
                              'Back',
                              style: TextStyle(
                                  color: MyColors.greenColor,
                                  fontFamily: 'AbhayaLibre',
                                  fontSize: 20.0),
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(30.0))),
                                side: BorderSide(
                                    color: MyColors.greenColor, width: 1))),
                        SizedBox(
                          height: 20.0,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      backgroundColor: MyColors.lightGreenColor,
    );
  }
}
