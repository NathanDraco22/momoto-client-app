import 'package:flutter/material.dart';
import 'package:turismo_client/src/features/site_detail/view/site_detail_screen.dart';

import 'widgets/site_card.dart';

class SitesScreen extends StatelessWidget {
  const SitesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const _RootScaffold();
  }
}

class _RootScaffold extends StatelessWidget {
  const _RootScaffold();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: _Body());
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GridView.builder(
        padding: EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 16,
        ),
        itemCount: 10,
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          mainAxisExtent: 260,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          return SiteCard(
            index: index,
            onTap: () {
              Navigator.of(context, rootNavigator: true).push(
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) {
                    return SiteDetailScreen(siteId: index.toString());
                  },
                  transitionsBuilder: (context, animation, secondaryAnimation, child) {
                    return FadeTransition(
                      opacity: animation,
                      child: child,
                    );
                  },
                  barrierColor: Colors.transparent,
                  opaque: false,
                ),
              );
            },
          );
        },
      ),
    );
  }
}
