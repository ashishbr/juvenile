import 'package:flutter/material.dart';

import '../../utils/constants/sizes.dart';

class JSpacingStyle {
  static EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top : JSizes.appBarHeight,
    left: JSizes.defaultSpace,
    right: JSizes.defaultSpace,
    bottom: JSizes.defaultSpace,
  );
}