import 'package:flutter/material.dart';
import 'package:turismo_client/router/app_router.dart';
import 'package:turismo_client/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Material App',
      theme: AppTheme().getLightTheme(),
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
    );
  }
}
