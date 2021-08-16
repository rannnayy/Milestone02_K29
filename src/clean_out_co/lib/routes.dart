import 'package:clean_out_co/pages/language.dart';
import 'package:clean_out_co/pages/notif.dart';
import 'package:clean_out_co/pages/privacy_policy.dart';
import 'package:clean_out_co/pages/profile_page.dart';
import 'package:clean_out_co/pages/save_our_planet.dart';
import 'package:clean_out_co/pages/tentang_kami.dart';
import 'package:clean_out_co/pages/terms_condition.dart';
import 'package:flutter/material.dart';
import 'package:clean_out_co/pages/welcome_page.dart';
import 'package:clean_out_co/pages/ready_order.dart';
import 'package:clean_out_co/pages/home.dart';
import 'package:clean_out_co/pages/step_one.dart';
import 'package:clean_out_co/pages/step_two.dart';
import 'package:clean_out_co/pages/step_three.dart';
import 'package:clean_out_co/pages/step_four.dart';
import 'package:clean_out_co/pages/step_five.dart';
import 'package:clean_out_co/pages/step_six.dart';
import 'package:clean_out_co/pages/listed_user.dart';
import 'package:clean_out_co/pages/page_daftar.dart';
import 'package:clean_out_co/pages/choose_role.dart';
import 'package:clean_out_co/pages/rating.dart';
import 'package:clean_out_co/pages/bantuan.dart';
import 'package:clean_out_co/pages/settings.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/welcomepage':
        return FadeRoute(page: WelcomePage());
      case '/readyorder':
        return FadeRoute(page: ReadyOrder());
      case '/stepone':
        return FadeRoute(page: StepOneOrder());
      case '/steptwo':
        if (args == 'organic')
          return FadeRoute(page: StepTwoOrder(typeSelected: "organic", ));
        else if (args == 'inorganic')
          return FadeRoute(page: StepTwoOrder(typeSelected: "inorganic", ));
        else
          return FadeRoute(page: StepOneOrder());
      case '/stepthree':
        if (args == 'organic')
          return FadeRoute(page: StepThreeOrder(typeSelected: "organic", ));
        else if (args == 'inorganic')
          return FadeRoute(page: StepThreeOrder(typeSelected: "inorganic", ));
        else
          return FadeRoute(page: StepOneOrder());
      case '/stepfour':
        if (args == 'organic')
          return FadeRoute(page: StepFourOrder(typeSelected: "organic", ));
        else if (args == 'inorganic')
          return FadeRoute(page: StepFourOrder(typeSelected: "inorganic", ));
        else
          return FadeRoute(page: StepOneOrder());
      case '/stepfive':
        if (args == 'organic')
          return FadeRoute(page: StepFiveOrder(typeSelected: "organic", ));
        else if (args == 'inorganic')
          return FadeRoute(page: StepFiveOrder(typeSelected: "inorganic", ));
        else
          return FadeRoute(page: StepOneOrder());
      case '/stepsix':
        if (args == 'organic')
          return FadeRoute(page: StepSixOrder(typeSelected: "organic", ));
        else if (args == 'inorganic')
          return FadeRoute(page: StepSixOrder(typeSelected: "inorganic", ));
        else
          return FadeRoute(page: StepOneOrder());
      case '/listeduser':
        return FadeRoute(page: ListedAsUser());
      case '/chooserole':
        return FadeRoute(page: ChooseRole());
      case '/pagedaftar':
        return FadeRoute(page: PageDaftar());
      case '/profilepage':
        return FadeRoute(page: ProfilePage());
      case '/homepage':
        return FadeRoute(page: Home());
      case '/saveourplanet':
        return FadeRoute(page: SaveOurPlanet());
      case '/rating':
        return FadeRoute(page: Rating());
      case '/setting':
        return FadeRoute(page: Settings());
      case '/bantuan':
        return FadeRoute(page: Bantuan());
      case '/notifsetting':
        return FadeRoute(page: NotifSetting());
      case 'langsetting':
        return FadeRoute(page: LangSetting());
      case '/bantuan':
        return FadeRoute(page: Bantuan());
      case '/privacypolicy':
        return FadeRoute(page: PrivacyPolicy());
      case '/termsofservice':
        return FadeRoute(page: TermsCondition());
      case '/aboutus':
        return FadeRoute(page: TentangKami());
      default:
        return FadeRoute(page: WelcomePage());
    }
  }
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