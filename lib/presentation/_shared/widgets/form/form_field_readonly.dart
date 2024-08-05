import 'package:flutter/material.dart';

class FormFieldReadOnly extends StatelessWidget {
  final String value;
  final String? label;

  const FormFieldReadOnly({
    super.key,
    required this.value,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (label != null)
                  Text(
                    label!,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                Text(value),
              ],
            ),
          ),
        )
      ],
    );
  }
}
