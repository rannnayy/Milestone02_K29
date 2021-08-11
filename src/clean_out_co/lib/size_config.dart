import 'package:flutter/material.dart';

class SizeConfig {
  BuildContext _context;
  double blockSizeHorizontal = 0.0;
  double blockSizeVertical = 0.0;

  SizeConfig(this._context) {
    MediaQueryData _mediaQueryData = MediaQuery.of(_context);
    blockSizeHorizontal = _mediaQueryData.size.width / 100.0;
    blockSizeVertical = _mediaQueryData.size.height / 100.0;
  }
}
