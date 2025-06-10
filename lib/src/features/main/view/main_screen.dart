import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:turismo_client/src/features/main/view/main_containers.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    log("dibujando main screen");
    return MainContainer(
      key: ValueKey("MainContainer"),
      child: _RootScaffold(
        key: ValueKey("RootScaffold"),
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
      appBar: AppBar(
        title: const Text("Turismo"),
      ),
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
            icon: Icon(Icons.account_circle_outlined),
            label: 'Profile',
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
