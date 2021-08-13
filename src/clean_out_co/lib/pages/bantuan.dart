import 'package:flutter/material.dart';
import '../utils.dart';

class Bantuan extends StatelessWidget {
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
                      'Bantuan',
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
                        Text(
                          'FAQs',
                          style: judul,
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          'Apakah kami dapat membuat akun Sampah Warrior sekaligus User dengan satu akun email?',
                          style: isi,
                          textAlign: TextAlign.justify,
                        ),
                        Text(
                          '  \u2022 Tidak, Anda hanya dapat mendaftarkan satu akun dengan satu role untuk setiap alamat email yang Anda miliki.',
                          style: isi,
                        ),
                        Text(''),
                        Text(
                          'Bagaimana saya dapat menerima pembayaran atas order yang saya ambil?',
                          style: isi,
                          textAlign: TextAlign.justify,
                        ),
                        Text(
                          '  \u2022 Order yang diambil akan divaluasi menjadi poin sesuai dengan jauhnya lokasi penjemputan sampah serta kuantitas dak kualitas sampah yang diambil.',
                          style: isi,
                        ),
                        Text(''),
                        Text(
                          'Kapan saya dapat mencairkan poin yang saya dapatkan?',
                          style: isi,
                          textAlign: TextAlign.justify,
                        ),
                        Text(
                          '  \u2022 Anda dapat mencairkan poin menjadi dana pada e-wallet (Dana/Ovo) jika poin yang Anda miliki sekurang-kurangnya 1000 poin.',
                          style: isi,
                        ),
                        Text(''),
                        Text('Contact Us', style: judul),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          'Masih memiliki pertanyaan atau membutuhkan bantuan lebih lanjut? Anda dapat menghubungi kami melalui surel,',
                          style: isi,
                          textAlign: TextAlign.justify,
                        ),
                        Text(''),
                        Text(
                          'SampahWarrior.CleanOut@gmail.com',
                          style: isi,
                          textAlign: TextAlign.justify,
                        ),
                        Text(
                          'pada jam kerja, Senin-Sabtu pk. 08.00 - 20.00.',
                          style: isi,
                          textAlign: TextAlign.justify,
                        ),
                        Text(''),
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
