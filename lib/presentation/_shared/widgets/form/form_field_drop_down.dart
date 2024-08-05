import 'package:flutter/material.dart';

class FormFieldDropDown<T> extends StatelessWidget {
  final String label;
  final String hintText;
  final List<DropdownMenuItem<T>> dropdownMenuItems;
  final T? initialValue;
  final String? Function(String?)? validator;
  final void Function(T?)? onSelected;

  const FormFieldDropDown({
    super.key,
    required this.label,
    required this.hintText,
    required this.dropdownMenuItems,
    this.initialValue,
    this.validator,
    this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          label,
          style: const TextStyle(fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 5.0),
        DropdownButtonFormField<T>(
          hint: Text(hintText),
          value: initialValue,
          decoration: InputDecoration(
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
          items: dropdownMenuItems,
          onChanged: onSelected,
        ),
      ],
    );
  }
}
