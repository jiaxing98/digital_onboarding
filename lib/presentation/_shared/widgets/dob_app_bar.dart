import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DobAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const DobAppBar({
    super.key,
    required this.title,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      leading: BackButton(
        onPressed: () => context.pop(),
      ),
      backgroundColor: Colors.blueGrey,
    );
  }
}
