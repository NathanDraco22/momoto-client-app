import 'package:flutter/material.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MainAppBar({
    super.key,
  });

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text("Turismo"),
      centerTitle: false,
      actionsPadding: EdgeInsets.only(right: 8),
      actions: [
        GestureDetector(
          onTap: () {
            Scaffold.of(context).openEndDrawer();
          },
          child: CircleAvatar(
            radius: 20,
          ),
        ),
      ],
    );
  }
}
