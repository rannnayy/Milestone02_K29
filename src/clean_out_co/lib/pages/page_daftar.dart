import 'package:clean_out_co/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:clean_out_co/size_config.dart';
import 'package:clean_out_co/widget/reusable_widgets_order.dart';

class PageDaftar extends StatefulWidget {
  static var routeName;
  @override
  _PageDaftarState createState() => _PageDaftarState();
}

class _PageDaftarState extends State<PageDaftar> {
  static var routeName = '/pagedaftar';

  @override
  Widget build(BuildContext context) {
    SizeConfig _conf = SizeConfig(context);
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/backgroundDaftar.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                  bottom: _conf.blockSizeVertical * 3,
                ),
                child: TextDisplays(
                  textSize: _conf.blockSizeHorizontal * 7,
                  fontFam: 'Montserrat',
                  fontColor: Colors.black,
                  textData: "Daftar",
                  fontWgt: FontWeight.w700,
                  alignText: TextAlign.center,
                ),
              ),
              Container(
                width: _conf.blockSizeHorizontal * 70,
                padding: EdgeInsets.all(_conf.blockSizeHorizontal * 1),
                child: TextField(
                  //controller: nama,
                  autocorrect: false,
                  decoration: InputDecoration(
                      hintText: 'Nama Lengkap'
                  ),
                ),
              ),
              Container(
                width: _conf.blockSizeHorizontal * 70,
                padding: EdgeInsets.all(_conf.blockSizeHorizontal * 1),
                child: TextField(
                  //controller: tanggalLahir,
                  autocorrect: false,
                  decoration: InputDecoration(
                      hintText: 'Tanggal Lahir (dd/mm/yyyy)'
                  ),
                ),
              ),
              Container(
                width: _conf.blockSizeHorizontal * 70,
                padding: EdgeInsets.all(_conf.blockSizeHorizontal * 1),
                child: TextField(
                  //controller: eMail,
                  autocorrect: false,
                  decoration: InputDecoration(
                      hintText: 'Alamat E-mail'
                  ),
                ),
              ),
              Container(
                width: _conf.blockSizeHorizontal * 70,
                padding: EdgeInsets.all(_conf.blockSizeHorizontal * 1),
                child: TextField(
                  //controller: noTelp,
                  autocorrect: false,
                  decoration: InputDecoration(
                      hintText: 'Nomor Telepon'
                  ),
                ),
              ),
              Container(
                width: _conf.blockSizeHorizontal * 70,
                padding: EdgeInsets.all(_conf.blockSizeHorizontal * 1),
                child: TextField(
                  //controller: passWord,
                  autocorrect: false,
                  decoration: InputDecoration(
                      hintText: 'Kata sandi'
                  ),
                ),
              ),
              Container(
                width: _conf.blockSizeHorizontal * 70,
                padding: EdgeInsets.only(
                  top: _conf.blockSizeHorizontal * 1,
                  left: _conf.blockSizeHorizontal * 1,
                  right: _conf.blockSizeHorizontal * 1,
                  bottom: _conf.blockSizeHorizontal * 4,
                ),
                child: TextField(
                  //controller: passConfirm,
                  autocorrect: false,
                  decoration: InputDecoration(
                      hintText: 'Konfirmasi kata sandi'
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () => Navigator.of(context).pushNamed('/chooserole'),
                child: Text(
                  'Daftar',
                  style: TextStyle(
                    fontSize: _conf.blockSizeHorizontal * 5,
                    color: Colors.white,
                    fontFamily: 'Montserrat',
                  ),
                ),
                style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor: MaterialStateProperty.all<Color>(createMaterialColor(MyColors.greenColor)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            side: BorderSide(color: MyColors.greenColor)
                        )
                    )
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}