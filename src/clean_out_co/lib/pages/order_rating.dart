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
            selesaiButton(),
            commentField(),
          ]
      ),

    );
  }
}

Widget twoptsButton() {
  return Align(
    alignment: Alignment(-0.9, 0.1),
    child: ElevatedButton(
      child: Text(
        '2 pts',
        style: TextStyle(fontSize: 20),
      ),
      onPressed: () {
        print('Pressed');
      },
      style: ElevatedButton.styleFrom(
          fixedSize: Size(90, 15),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50))
      ),
    ),
  );
}

Widget fourptsButton() {
  return Align(
    alignment: Alignment(-0.3, 0.1),
    child: ElevatedButton(
      child: Text(
        '4 pts',
        style: TextStyle(fontSize: 20),
      ),
      onPressed: () {
        print('Pressed');
      },
      style: ElevatedButton.styleFrom(
          fixedSize: Size(90, 15),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50))
      ),
    ),
  );
}

Widget fiveptsButton() {
  return Align(
    alignment: Alignment(0.3, 0.1),
    child: ElevatedButton(
      child: Text(
        '5 pts',
        style: TextStyle(fontSize: 20),
      ),
      onPressed: () {
        print('Pressed');
      },
      style: ElevatedButton.styleFrom(
          fixedSize: Size(90, 15),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50))
      ),
    ),
  );
}

Widget tenptsButton() {
  return Align(
    alignment: Alignment(0.9, 0.1),
    child: ElevatedButton(
      child: Text(
        '10 pts',
        style: TextStyle(fontSize: 20),
      ),
      onPressed: () {
        print('Pressed');
      },
      style: ElevatedButton.styleFrom(
          fixedSize: Size(90, 15),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50))
      ),
    ),
  );
}

Widget selesaiButton() {
  return Align(
    alignment: Alignment(0.0, 1.0),
    child: ElevatedButton(
      child: Text(
        'Selesai',
        style: TextStyle(fontSize: 25),
      ),
      onPressed: () {
        print('Pressed');
      },
      style: ElevatedButton.styleFrom(
          fixedSize: Size(300, 50),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50))
      ),
    ),
  );
}

Widget commentField() {
  final maxLines = 8;

  return Container(
    alignment: Alignment(0, 48.5),
    margin: EdgeInsets.all(12),
    height: maxLines * 24.0,
    child: TextField(
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.done,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: "Masukkan Komentar",
        fillColor: Colors.grey[300],
        filled: true,
      ),
    ),
  );
}