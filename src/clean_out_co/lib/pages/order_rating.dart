import 'package:flutter/material.dart';
import 'package:clean_out_co/utils.dart';

class OrderRating extends StatefulWidget {
  const OrderRating({Key? key}) : super(key: key);

  @override
  _OrderRatingState createState() => _OrderRatingState();
}

class _OrderRatingState extends State<OrderRating> {
  static String routeName = "/orderrating";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: MyColors.greenColor,
          title: Text('Order ceritanya'),
          centerTitle: true,
        )
    );
  }
}