import 'dart:ui';
import 'package:clean_out_co/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dialogue {
  static void showDialogError(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(32.0))
          ),
          contentPadding: EdgeInsets.only(top: 10.0),
          title: Text(
            "Error!",
            textAlign: TextAlign.center,
          ),
          actions: <Widget>[
            Center(
              child: ElevatedButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text(
                  "OK",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
                style: ButtonStyle(
                    alignment: Alignment.center,
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor: MaterialStateProperty.all<Color>(createMaterialColor(MyColors.orangeColor)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          side: BorderSide(color: createMaterialColor(MyColors.orangeColor)),
                        )
                    )
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

// class DialogueBox extends StatefulWidget {
//   final String condition;
//
//   const DialogueBox({
//     Key? key,
//     required this.condition,
//   }) : assert (condition != null,);
//
//   @override
//   _DialogueBoxState createState() => _DialogueBoxState();
// }
//
// class _DialogueBoxState extends State<DialogueBox> {
//   @override
//   Widget build(BuildContext context) {
//     return Dialog(
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(Constants.padding),
//       ),
//       elevation: 0,
//       backgroundColor: Colors.transparent,
//       child: contentBox(context),
//     );
//   }
//   contentBox(context) {
//     SizeConfig _conf = SizeConfig(context);
//     return Stack(
//       children: <Widget>[
//         Container(
//           padding: EdgeInsets.only(
//             left: Constants.padding,
//             top: Constants.avatarRadius + Constants.padding,
//             right: Constants.padding,
//             bottom: Constants.padding,
//           ),
//           margin: EdgeInsets.only(
//             top: Constants.avatarRadius,
//           ),
//           decoration: BoxDecoration(
//             shape: BoxShape.rectangle,
//             color: Colors.white,
//             borderRadius: BorderRadius.circular(Constants.padding),
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.black,
//                 offset: Offset(0,10),
//                 blurRadius: 10,
//               ),
//             ],
//           ),
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: <Widget>[
//               Text(
//                 widget.condition,
//                 style: TextStyle(
//                   fontSize: _conf.blockSizeHorizontal * 1,
//                   fontFamily: 'Montserrat',
//                   fontWeight: FontWeight.w600,
//                 ),
//               ),
//               SizedBox(
//                 height: _conf.blockSizeVertical * 15,
//               ),
//               Align(
//                 alignment: Alignment.bottomCenter,
//                 child: ElevatedButton(
//                   onPressed: () => Navigator.pop(context),
//                   child: Text(
//                     "OK",
//                     style: TextStyle(
//                       fontSize: _conf.blockSizeHorizontal * 4,
//                       color: Colors.white,
//                       fontFamily: 'Montserrat',
//                     ),
//                   ),
//                   style: ButtonStyle(
//                       foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
//                       backgroundColor: MaterialStateProperty.all<Color>(createMaterialColor(MyColors.orangeColor)),
//                       shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//                           RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(15.0),
//                             side: BorderSide(color: createMaterialColor(MyColors.orangeColor)),
//                           )
//                       )
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
//
// }