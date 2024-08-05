import 'package:flutter/material.dart';

class FormFieldInput extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final String hintText;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;

  const FormFieldInput({
    super.key,
    required this.controller,
    required this.label,
    required this.hintText,
    this.keyboardType,
    this.validator,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 5.0,
        ),
        TextFormField(
          controller: controller,
          keyboardType: keyboardType,
          decoration: InputDecoration(
            hintText: hintText,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(9.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(9.0),
              borderSide: const BorderSide(
                color: Colors.grey,
              ),
            ),
          ),
          validator: validator,
          onChanged: onChanged,
        ),
      ],
    );
  }
}
