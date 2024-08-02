import 'package:flutter/material.dart';

class UTEmptyView extends StatelessWidget {
  const UTEmptyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("No Data"),
      ),
    );
  }
}
