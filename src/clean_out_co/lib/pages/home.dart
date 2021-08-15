import 'package:clean_out_co/widget/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:clean_out_co/pages/main_page.dart';
import 'package:clean_out_co/pages/profile_page.dart';

class Home extends StatefulWidget {
  static var routename;
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  static String routeName = "/homepage";

  int bottomSelectedIndex = 0;

  List<BottomNavigationBarItem> buildBottomNavBarItems() {
    return [
      BottomNavigationBarItem(
        icon: new Icon(Icons.home),
        label:'Home',
      ),
      BottomNavigationBarItem(
        icon: new Icon(Icons.article),
        label: 'Activity',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person),
        label: 'My Account',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.settings),
        label: 'Settings',
      )
    ];
  }

  PageController pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );

  void pageChanged(int index) {
    setState(() {
      bottomSelectedIndex = index;
    });
  }

  void bottomTapped(int index) {
    setState(() {
      bottomSelectedIndex = index;
      pageController.animateToPage(index, duration: Duration(milliseconds: 500), curve: Curves.ease);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: PageView(
          controller: pageController,
          onPageChanged: (index) {
            pageChanged(index);
          },
          children: [
            MainPage(),
            Text('Activity Here'), //TODO: Activity.dart plz
            ProfilePage(),
            Text('Settings goes here'), //TODO: settings.dart plz
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: buildBottomNavBarItems(),
        currentIndex: bottomSelectedIndex,
        onTap: (index) {
          bottomTapped(index);
        },
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 12,
        showUnselectedLabels: true,
      ),
    );
  }


}
