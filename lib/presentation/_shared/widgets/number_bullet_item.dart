import 'package:flutter/material.dart';

class NumberBulletItem extends StatelessWidget {
  final String number;
  final Widget text;

  const NumberBulletItem({
    super.key,
    required this.number,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(number),
        const SizedBox(width: 10.0),
        Expanded(child: text),
      ],
    );
  }
}
