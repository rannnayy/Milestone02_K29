import 'package:flutter/material.dart';
import '../utils.dart';

class TentangKami extends StatefulWidget {
  static var routeName;
  @override
  _TentangKamiState createState() => _TentangKamiState();
}

class _TentangKamiState extends State<TentangKami> {
  static var routeName = '/aboutus';

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
                    padding: const EdgeInsets.fromLTRB(25.0, 17.0, 14.0, 0),
                    child: Text(
                      'Tentang Kami',
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
                    padding: const EdgeInsets.fromLTRB(14.0, 0, 14, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Sampah Warrior', style: judul),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          'CleanOut.Co merupakan proyek Milestone SPARTA HMIF 2020 karya kelompok 29 “Sampah Warrior”, yang terdiri atas:',
                          style: isi,
                          textAlign: TextAlign.justify,
                        ),
                        Text(''),
                        Text(
                          '  \u2022 Ilham Bintang Nurmansyah (16520029)',
                          style: isi,
                        ),
                        Text(
                          '  \u2022 Maharani Ayu Putri Irawan (16520134)',
                          style: isi,
                        ),
                        Text(
                          '  \u2022 Haje Noorjamani (16520156)',
                          style: isi,
                        ),
                        Text(
                          '  \u2022 Kafi Irgie Rahmansyah (16520257)',
                          style: isi,
                        ),
                        Text(
                          '  \u2022 Dzaky Fattan Risqullah (16520278)',
                          style: isi,
                        ),
                        Text(
                          '  \u2022 Arga Daniel Reynardo Samosir (16520310)',
                          style: isi,
                        ),
                        Text(
                          '  \u2022 Muhammad Fahmi Irfan (16520320)',
                          style: isi,
                        ),
                        Text(
                          '  \u2022 Farrel Ahmad (16520373)',
                          style: isi,
                        ),
                        Text(
                          '  \u2022 Muhammad Rakha Wiratama (16520462)',
                          style: isi,
                        ),
                        Text(''),
                        Text(
                          'Sampah sendiri merupakan suatu permasalahan yang tidak akan pernah bisa dihilangkan dari kehidupan sehari hari. Sampah juga termasuk permasalahan yang sampai saat ini masih belum bisa diatasi secara efektif baik oleh pemerintah pusat maupun pemerintah daerah. Indonesia juga merupakan negara pemroduksi  sampah terbanyak nomor 2 di dunia setelah negara China. Hal ini semakin diperparah oleh kenyataan dimana masyarakat Indonesia masih dikenal dengan budayanya yaitu “membuang sampah sembarangan”. Oleh karena itu, kami tergerak untuk membantu mengatasi permasalahan ini.',
                          style: isi,
                          textAlign: TextAlign.justify,
                        ),
                        Text(''),
                        Text(
                          'Tujuan dari dibuatnya program “Sampah Warrior” ini adalah dengan membantu masyarakat Indonesia dalam membuang sampah pada tempatnya, terlebih lagi sampah yang dibuang juga merupakan sampah yang sudah dipisah antara sampah organik dan anorganik. Dengan adanya program “Sampah Warrior” ini, diharapkan Negara Indonesia menjadi negara yang lebih bersih dari sampah dan masyarakatnya pun menjadi masyarakat yang sadar akan sampah.',
                          style: isi,
                          textAlign: TextAlign.justify,
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        ElevatedButton.icon(
                            onPressed: () {
                              Navigator.of(context).pop();
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
