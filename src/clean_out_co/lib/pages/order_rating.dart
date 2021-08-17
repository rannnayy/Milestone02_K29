import 'package:flutter/material.dart';
import 'package:clean_out_co/utils.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class OrderRating extends StatefulWidget {
  const OrderRating({Key? key}) : super(key: key);

  @override
  _OrderRatingState createState() => _OrderRatingState();
}

class _OrderRatingState extends State<OrderRating> {
  static String routeName = "/orderrating";

  var _initialRating = 3.0;
  IconData? _selectedIcon;
  late double _rating;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: MyColors.greenColor,
        title: Text('Order Rating'),
        centerTitle: true,
      ),
      body: Stack(
          children: <Widget>[
            twoptsButton(),
            fourptsButton(),
            fiveptsButton(),
            tenptsButton(),
            selesaiButton(context),
            commentField(),
            starRating(),
            BeriRating(),
            InfoWarrior(),
            WarriorName(),
            IconWarrior(),
            GetPointText(),

          ],
      ),

    );
  }

  Widget starRating()
  {
    return RatingBar.builder(
      initialRating: _initialRating,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      unratedColor: Colors.amber.withAlpha(50),
      itemCount: 5,
      itemSize: 50.0,
      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
      itemBuilder: (context, _) => Icon(
        _selectedIcon ?? Icons.star,
        color: Colors.amber,
      ),
      onRatingUpdate: (rating) {
        setState(() {
          _rating = rating;
        });
      },
      updateOnDrag: true,
    );
  }

}

Widget twoptsButton() {
  return Align(
    alignment: Alignment(-0.9, 0.25),
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
              borderRadius: BorderRadius.circular(50)),
        primary: Colors.green[500],
      ),
    ),
  );
}

Widget fourptsButton() {
  return Align(
    alignment: Alignment(-0.3, 0.25),
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
              borderRadius: BorderRadius.circular(50)),
        primary: Colors.green[500],
      ),
    ),
  );
}

Widget fiveptsButton() {
  return Align(
    alignment: Alignment(0.3, 0.25),
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
              borderRadius: BorderRadius.circular(50)),
        primary: Colors.green[500],
      ),
    ),
  );
}

Widget tenptsButton() {
  return Align(
    alignment: Alignment(0.9, 0.25),
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
              borderRadius: BorderRadius.circular(50)),
        primary: Colors.green[500],
      ),
    ),
  );
}

Widget selesaiButton(BuildContext context) {
  return Align(
    alignment: Alignment(0.0, 1.0),
    child: ElevatedButton(
      child: Text(
        'Selesai',
        style: TextStyle(fontSize: 25),
      ),
      onPressed: () => Navigator.of(context).pushNamed('/rating'),
      style: ElevatedButton.styleFrom(
          fixedSize: Size(300, 50),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50)),
        primary: Colors.green[500],
      ),
    ),
  );
}

Widget commentField() {
  final maxLines = 5;

  return Container(
    alignment: Alignment(0,0.78),
    margin: EdgeInsets.all(12),
    child: TextField(
      decoration: InputDecoration(
        hintText: "Masukkan Komentar",
        border: OutlineInputBorder(),
        fillColor: Colors.grey[300],
        filled: true,
        isDense: true,
        contentPadding: EdgeInsets.fromLTRB(10, 40, 10, 100),
      ),
    ),
  );
}

Widget BeriRating()
{
  return Align(
    alignment: Alignment(0.0, -0.05),
    child : Text(
      'Beri Rating',
      style: TextStyle(
        fontSize: 30,
          fontWeight: FontWeight.bold,
      )
    )
  );
}

Widget InfoWarrior()
{
  return Align(
      alignment: Alignment(0.0, -0.60),
      child : Text(
          'Informasi Warrior',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24
          )
      )
  );
}

Widget WarriorName()
{
  return Align(
      alignment: Alignment(0.5, -0.30),
      child : Text(
          'Andi Budi Cahya',
          style: TextStyle(
              fontSize: 25
          )
      )
  );
}

Widget IconWarrior()
{
  return Align(
    alignment : Alignment (-0.75, -0.35),
    child : Icon(
      Icons.account_circle,
      color: Colors.green[500],
      size: 125.0,
    )
  );
}

Widget GetPointText()
{
  return Align(
      alignment: Alignment(0.0, -0.8),
      child : Text(
          'Kamu mendapatkan xx poin!',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24
          )
      )
  );
}