import 'package:flutter/material.dart';

class UTErrorView extends StatelessWidget {
  final String? message;

  const UTErrorView({
    super.key,
    this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(message ?? "Something went wrong"),
      ),
    );
  }
}
