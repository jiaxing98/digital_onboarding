import 'package:flutter/material.dart';

class FormFieldRowFlex extends StatelessWidget {
  final Widget child1;
  final Widget child2;

  const FormFieldRowFlex({
    super.key,
    required this.child1,
    required this.child2,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          flex: 2,
          child: child1,
        ),
        const SizedBox(
          width: 16.0 / 2,
        ),
        Flexible(
          flex: 3,
          child: child2,
        ),
      ],
    );
  }
}
