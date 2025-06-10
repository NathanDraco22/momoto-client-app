import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainContainer extends StatefulWidget {
  const MainContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  State<MainContainer> createState() => _MainContainerState();
}

class _MainContainerState extends State<MainContainer> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return RepositoryMainContainer(
      child: widget.child,
    );
  }
}

class MockRepository {}

class RepositoryMainContainer extends StatelessWidget {
  const RepositoryMainContainer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (_) => MockRepository(),
        ),
      ],
      child: child,
    );
  }
}
