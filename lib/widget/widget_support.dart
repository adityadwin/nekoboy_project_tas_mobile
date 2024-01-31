import 'package:flutter/material.dart';

class AppWidget {
  static TextStyle boldTextFeildStyle() {
    return const TextStyle(
        color: Colors.black,
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
        fontFamily: "Lato");
  }

  static TextStyle headlineTextFeildStyle() {
    return const TextStyle(
        color: Colors.black,
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
        fontFamily: "Lato");
  }

  static TextStyle lightTextFeildStyle() {
    return const TextStyle(
        color: Colors.black38,
        fontSize: 16.0,
        fontWeight: FontWeight.w500,
        fontFamily: "Lato");
  }

  static TextStyle semiBoldTextFeildStyle() {
    return const TextStyle(
        color: Colors.black87,
        fontSize: 18.0,
        fontWeight: FontWeight.w500,
        fontFamily: "Lato");
  }
}
