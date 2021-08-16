import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xffA2DEB8)
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 10,
                        left: 20
                      ),
                      child: Text(
                        'Settings',
                        style: TextStyle(
                          fontSize: 48,
                          fontFamily: 'Abhaya Libre',
                          fontWeight: FontWeight.w800
                        ),
                      ),
                    ),
                    Divider(
                      color: Colors.black,
                      thickness: 1.5,
                      indent: 10,
                      endIndent: 10,
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        top: 3
                      ),
                      child: Text(
                        'Personalisasi',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                          fontFamily: 'Abhaya Libre'
                        ),
                      ),
                    ),
                    Divider(
                      color: Color(0xff69B083),
                      thickness: 1,
                    ),
                    SizedBox(height: 2,),
                    SettingButton(
                      icon: Icons.notifications_none,
                      text: 'Notifikasi',
                      onPressed: () => Navigator.of(context).pushNamed('/notifsetting'),
                    ),
                    SizedBox(height: 10,),
                    SettingButton(
                      icon: Icons.language,
                      text: 'Bahasa',
                      onPressed: () => Navigator.of(context).pushNamed('/langsetting'),
                    ),
                    SizedBox(height: 50),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 10,
                          top: 3
                      ),
                      child: Text(
                        'Personalisasi',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                            fontFamily: 'Abhaya Libre'
                        ),
                      ),
                    ),
                    Divider(
                      color: Color(0xff69B083),
                      thickness: 1,
                    ),
                    SizedBox(height: 2,),
                    SettingButton(
                      icon: Icons.help_outline,
                      text: 'Bantuan',
                      onPressed: () => Navigator.of(context).pushNamed('/bantuan'),
                    ),
                    SizedBox(height: 10,),
                    SettingButton(
                      icon: Icons.info_outline,
                      text: 'Privacy Policy',
                      onPressed: () => Navigator.of(context).pushNamed('/privacypolicy'),
                    ),
                    SizedBox(height: 10,),
                    SettingButton(
                      icon: Icons.info_outline,
                      text: 'Terms of Services',
                      onPressed: () => Navigator.of(context).pushNamed('/termsofservice'),
                    ),
                    SizedBox(height: 10,),
                    SettingButton(
                      icon: Icons.star_border,
                      text: 'Beri Kami Penilaian',
                      onPressed: () => Navigator.of(context).pushNamed('/rating'),
                    ),
                    SizedBox(height: 10,),
                    SettingButton(
                      icon: Icons.format_quote,
                      text: 'Tentang CleanOut.Co',
                      onPressed: () => Navigator.of(context).pushNamed('/aboutus'),
                    ),
                  ],
                ),
              ),
              width: double.infinity,
              height: double.infinity,
            ),
          )
        ),
      )
    );
  }
}

class SettingButton extends StatefulWidget {
  final IconData icon;
  final String text;
  final Function()? onPressed;

  const SettingButton({
    Key? key,
    required this.icon,
    required this.text,
    this.onPressed,
  }) : super(key: key);


  @override
  _SettingButtonState createState() => _SettingButtonState();
}

class _SettingButtonState extends State<SettingButton> {


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Color(0xff91D8AB),
            shadowColor: Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0)
            )
          ),
          onPressed: widget.onPressed,
          child: Container(
            width: double.infinity,
            height: 60,
            padding: EdgeInsets.only(
              left: 10,
              top: 5,
              bottom: 5,
            ),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Color(0xff026928),
                  child: Icon(
                    widget.icon,
                    color: Colors.white,
                  )
                ),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: Text(
                    widget.text,
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.black
                    ),
                  ),
                ),
                Icon(
                  Icons.navigate_next_rounded,
                  color: Color(0xff69B083),
                  size: 48,
                )
              ],
            ),
          )
        ),
        Divider(
          height: 0,
          thickness: 1,
          color: Color(0xff69B083),
        )
      ],
    );
  }
}
