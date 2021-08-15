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
        title: Text('Order rating ceritanya'),
        centerTitle: true,
      ),
      body: Stack(
          children: <Widget>[
            twoptsButton(),
            fourptsButton(),
            fiveptsButton(),
            tenptsButton(),
          ]
      ),

    );
  }
}

Widget twoptsButton() {
  return Align(
    alignment: Alignment(-0.9, 0.0),
    child: ElevatedButton(
      child: Text(
        '2 pts',
        style: TextStyle(fontSize: 20),
      ),
      onPressed: () {
        print('Pressed');
      },
    ),
  );
}

Widget fourptsButton() {
  return Align(
    alignment: Alignment(-0.3, 0.0),
    child: ElevatedButton(
      child: Text(
        '4 pts',
        style: TextStyle(fontSize: 20),
      ),
      onPressed: () {
        print('Pressed');
      },
    ),
  );
}

Widget fiveptsButton() {
  return Align(
    alignment: Alignment(0.28, 0.0),
    child: ElevatedButton(
      child: Text(
        '5 pts',
        style: TextStyle(fontSize: 20),
      ),
      onPressed: () {
        print('Pressed');
      },
    ),
  );
}

Widget tenptsButton() {
  return Align(
    alignment: Alignment(0.9, 0.0),
    child: ElevatedButton(
      child: Text(
        '10 pts',
        style: TextStyle(fontSize: 20),
      ),
      onPressed: () {
        print('Pressed');
      },
    ),
  );
}