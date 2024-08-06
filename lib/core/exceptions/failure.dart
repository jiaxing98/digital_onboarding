import 'package:flutter/material.dart';

class Failure {
  final String title;
  final String message;
  final IconData? icon;

  Failure({
    required this.title,
    required this.message,
    this.icon,
  });

  factory Failure.unknown() {
    return Failure(
      title: "Whoops!",
      message: "Something went wrong",
    );
  }
}
