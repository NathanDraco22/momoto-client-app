import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:turismo_client/src/features/main/view/main_containers.dart';
import 'package:turismo_client/src/features/main/view/widgets/profile_drawer.dart';

import 'widgets/main_app_bar.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    log("dibujando main screen");
    return MainContainer(
      key: const ValueKey("MainContainer"),
      child: _RootScaffold(
        key: const ValueKey("RootScaffold"),
        navigationShell: navigationShell,
      ),
    );
  }
}

class _RootScaffold extends StatefulWidget {
  const _RootScaffold({
    super.key,
    required this.navigationShell,
  });

  final StatefulNavigationShell navigationShell;

  @override
  State<_RootScaffold> createState() => _RootScaffoldState();
}

class _RootScaffoldState extends State<_RootScaffold> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const ProfileDrawer(),
      appBar: const MainAppBar(),
      body: SafeArea(
        child: _Body(widget.navigationShell),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: widget.navigationShell.currentIndex,
        onTap: (value) {
          widget.navigationShell.goBranch(
            value,
            initialLocation: value == 0,
          );
        },
        elevation: 5.0,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.explore_outlined),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.tour_outlined),
            label: 'Tours',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.inbox_outlined),
            label: 'Inbox',
          ),
        ],
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body(this.navigationShell);

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: navigationShell,
    );
  }
}
