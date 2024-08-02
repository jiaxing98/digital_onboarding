import 'package:digital_onboarding/utils/failure.dart';
import 'package:flutter/material.dart';

class UTErrorDialog extends StatelessWidget {
  final Failure failure;

  const UTErrorDialog({
    super.key,
    required this.failure,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(failure.title),
      content: Text(failure.message),
      actions: [
        OutlinedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('OKAY'),
        ),
      ],
    );
  }
}

Future<void> showErrorDialog({
  required BuildContext context,
  required Failure failure,
}) {
  return showDialog(
    context: context,
    builder: (ctx) {
      return UTErrorDialog(failure: failure);
    },
  );
}
