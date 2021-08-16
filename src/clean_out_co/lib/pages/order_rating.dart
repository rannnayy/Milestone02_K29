import 'package:flutter/material.dart';
import 'package:clean_out_co/utils.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

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
            StarRating(),
            BeriRating(),
            InfoWarrior(),
            WarriorName(),
            IconWarrior(),
            GetPointText(),

          ],
      ),

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

Widget StarRating()
{
  var rating = 3.0;
  return Align(
    alignment: Alignment(0.0, 0.08),
    child: SmoothStarRating(
      rating: rating,
      isReadOnly: false,
      size: 40,
      filledIconData: Icons.star,
      halfFilledIconData: Icons.star_half,
      defaultIconData: Icons.star_border,
      starCount: 5,
      allowHalfRating: false,
      spacing: 2.0,
      onRated: (value) {
        print("rating value -> $value");
        // print("rating value dd -> ${value.truncate()}");
      },
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