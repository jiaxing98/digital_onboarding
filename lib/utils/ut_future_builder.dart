import 'package:digital_onboarding/utils/ut_error_view.dart';
import 'package:flutter/material.dart';

class UTFutureBuilder<T> extends StatelessWidget {
  final Future<T>? future;
  final T? initialData;
  final Widget Function(T) onCompleted;
  final Widget Function()? onLoading;
  final Widget Function(Object?)? onError;

  const UTFutureBuilder({
    super.key,
    required this.future,
    this.initialData,
    required this.onCompleted,
    this.onLoading,
    this.onError,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<T>(
      future: future,
      initialData: initialData,
      builder: (ctx, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: onLoading?.call() ?? const CircularProgressIndicator());
        }

        if (snapshot.hasError) {
          return onError?.call(snapshot.error) ?? UTErrorView(message: snapshot.error.toString());
        }

        return onCompleted(snapshot.data as T);
      },
    );
  }
}
