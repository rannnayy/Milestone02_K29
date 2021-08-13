import 'package:flutter/material.dart';
import 'package:clean_out_co/utils.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.greenColor,
        title: Text('Profile ceritanya'),
        centerTitle: true,
      )
    );
  }
}
