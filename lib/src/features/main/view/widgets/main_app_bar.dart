import 'package:flutter/material.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MainAppBar({
    super.key,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text("Turismo"),
      centerTitle: false,
      actionsPadding: const EdgeInsets.only(right: 8),
      actions: [
        GestureDetector(
          onTap: () {
            Scaffold.of(context).openEndDrawer();
          },
          child: const CircleAvatar(
            radius: 20,
          ),
        ),
      ],
    );
  }
}
