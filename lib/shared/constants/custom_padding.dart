import 'package:flutter/material.dart';

class CustomPadding {
  static Padding defaultPadding({required Widget child, double value = 8.0}) {
    return Padding(
      padding: EdgeInsets.all(value),
      child: child,
    );
  }

  static Padding horizontalPadding({required Widget child, double value = 8.0}) {
    return Padding(
      padding: EdgeInsets.only(left: value, right: value),
      child: child,
    );
  }

  static Padding verticalPadding({required Widget child, double value = 8.0}) {
    return Padding(
      padding: EdgeInsets.only(top: value, bottom: value),
      child: child,
    );
  }

  static Padding topPadding({required Widget child, double value = 8.0}) {
    return Padding(
      padding: EdgeInsets.only(top: value),
      child: child,
    );
  }

  static Padding bottomPadding({required Widget child, double value = 8.0}) {
    return Padding(
      padding: EdgeInsets.only(bottom: value),
      child: child,
    );
  }

  static Padding leftPadding({required Widget child, double value = 8.0}) {
    return Padding(
      padding: EdgeInsets.only(left: value),
      child: child,
    );
  }

  static Padding rightPadding({required Widget child, double value = 8.0}) {
    return Padding(
      padding: EdgeInsets.only(right: value),
      child: child,
    );
  }
}
