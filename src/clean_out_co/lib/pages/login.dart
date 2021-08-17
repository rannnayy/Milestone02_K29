import 'package:flutter/material.dart';
import 'package:clean_out_co/size_config.dart';
import 'package:clean_out_co/utils.dart';

class Login extends StatefulWidget {
  @override
  _Login createState() => _Login();
}

class _Login extends State<Login> {
  @override
  Widget build(BuildContext context) {
    SizeConfig _conf = SizeConfig(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height,
              maxWidth: MediaQuery.of(context).size.width),
          decoration: BoxDecoration(color: createMaterialColor(MyColors.greenColor)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 4,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 24.0, vertical: 50.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10.0),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 6,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(_conf.blockSizeHorizontal * 15),
                      topRight: Radius.circular(_conf.blockSizeHorizontal * 15),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Selamat Datang",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: _conf.blockSizeHorizontal * 6,
                            fontWeight: FontWeight.w800,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: _conf.blockSizeVertical * 5,),
                        TextField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: BorderSide.none,
                            ),
                            filled: true,
                            fillColor: Colors.grey[400],
                            hintText: "E-mail",
                            prefixIcon: Icon(
                              Icons.email,
                              color: Colors.grey[600],
                            ),
                          ),
                        ),
                        SizedBox(height: 20.0),
                        TextField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: BorderSide.none,
                            ),
                            filled: true,
                            fillColor: Colors.grey[400],
                            hintText: "Password",
                            prefixIcon: Icon(
                              Icons.email,
                              color: Colors.grey[600],
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          child: Center(
                            child: TextButton(
                              style: TextButton.styleFrom(
                                textStyle: TextStyle(
                                  fontSize: _conf.blockSizeHorizontal * 4,
                                  color: createMaterialColor(MyColors.greenColor),
                                ),
                              ),
                              onPressed: () => Navigator.of(context).pushNamed('/pagedaftar'),
                              child: Text('Belum punya akun? Buat baru'),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Center(child: SizedBox(width: (_conf.blockSizeHorizontal * 25))),
                                shitButton(context, _conf.blockSizeHorizontal),
                              ]),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget shitButton(BuildContext context, double textSize) {
  return Center(
    child: ElevatedButton(
      child: Text(
        'Login',
        style: TextStyle(fontSize: textSize * 6),
      ),
      onPressed: () => Navigator.of(context).pushNamed('/homepage'),
      style: ElevatedButton.styleFrom(
          primary: createMaterialColor(MyColors.greenColor),
          fixedSize: Size(130, 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          )
      ),
    ),
  );
}
