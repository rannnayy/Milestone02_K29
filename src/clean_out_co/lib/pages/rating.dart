import 'package:flutter/material.dart';
import '../utils.dart';

class Rating extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 26.0, vertical: 0),
            child: SingleChildScrollView(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(30.0))),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 61.0, vertical: 32.0),
                        child: Image.asset('assets/Group18.png'),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(61.0, 0.0, 61.0, 16.0),
                        child: Text(
                          'Your Rating',
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(30.0, 32.0, 30.0, 30.0),
                        child: Text(
                          'What do you think about our app? Unsatisfied with our service? Let us know so we can fix these problem in the future and give you better service! ',
                          style: TextStyle(
                            color: MyColors.medGreyColor,
                            fontSize: 20.0,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 116.0, vertical: 20.0),
                            child: Text('Love It!'),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: MyColors.greenColor,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.0))),
                          ),
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.fromLTRB(17.0, 5.0, 17.0, 25.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Dislike this app?',
                                style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                    color: MyColors.greenColor),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Complain',
                                  style: TextStyle(
                                      color: MyColors.greenColor,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.underline),
                                ),
                              )
                            ],
                          ))
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      backgroundColor: MyColors.lightGreenColor,
    );
  }
}
