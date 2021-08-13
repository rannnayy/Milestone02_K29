import 'package:clean_out_co/pages/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:clean_out_co/pages/welcome_page.dart';
import 'package:clean_out_co/pages/ready_order.dart';
import 'package:clean_out_co/pages/search_order.dart';
import 'package:clean_out_co/pages/home.dart';
import 'package:clean_out_co/popups/dialog.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/welcomepage':
      //return MaterialPageRoute(builder: (_) => WelcomePage());
        return FadeRoute(page: WelcomePage());
      case '/readyorder':
      //return MaterialPageRoute(builder: (_) => ReadyOrder());
        return FadeRoute(page: ReadyOrder());
      case '/searchorder':
        return FadeRoute(page: SearchOrder());
      case '/profilepage':
        return FadeRoute(page: ProfilePage());
      case '/homepage':
        return FadeRoute(page: Home());
      default:
        return SlideLeftRoute(page: WelcomePage());
    }
  }
}

class SlideRightRoute extends PageRouteBuilder {
  final Widget page;
  SlideRightRoute({required this.page})
      : super(
    pageBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        ) =>
    page,
    transitionDuration: Duration(seconds: 1),
    transitionsBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        Widget child,
        ) =>
        SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(-1, 0),
            end: Offset.zero,
          ).animate(animation),
          child: child,
        ),
  );
}

class SlideLeftRoute extends PageRouteBuilder {
  final Widget page;
  SlideLeftRoute({required this.page})
      : super(
    pageBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        ) =>
    page,
    transitionsBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        Widget child,
        ) =>
        SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(0, 0),
            end: Offset(-1, 0),
          ).animate(animation),
          child: child,
        ),
  );
}

class FadeRoute extends PageRouteBuilder {
  final Widget page;
  FadeRoute({required this.page})
      : super(
    pageBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        ) =>
    page,
    transitionsBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        Widget child,
        ) =>
        FadeTransition(
          opacity: animation,
          child: child,
        ),
  );
}