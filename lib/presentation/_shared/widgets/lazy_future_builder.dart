import 'package:flutter/material.dart';

class LazyFutureBuilder<T> extends StatelessWidget {
  final Future<T>? future;
  final T? initialData;
  final Widget Function(T?) onCompleted;
  final Widget Function()? onLoading;
  final Widget Function(Object?)? onError;

  const LazyFutureBuilder({
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
          return onLoading?.call() ?? const CircularProgressIndicator();
        }

        if (snapshot.hasError) {
          return Center(
            child: onError?.call(snapshot.error) ?? const Text("Something went wrong"),
          );
        }

        return onCompleted(snapshot.data);
      },
    );
  }
}
