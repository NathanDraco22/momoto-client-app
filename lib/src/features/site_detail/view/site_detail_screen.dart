import 'package:flutter/material.dart';
import 'package:turismo_client/src/features/panoramic/view/panoramic_screen.dart';

part 'sections/description_section.dart';
part 'sections/photos_section.dart';

class SiteDetailScreen extends StatelessWidget {
  const SiteDetailScreen({super.key, required this.siteId});

  final String siteId;

  @override
  Widget build(BuildContext context) {
    return _RootScaffold(siteId);
  }
}

class _RootScaffold extends StatelessWidget {
  const _RootScaffold(this.siteId);

  final String siteId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: _Body(siteId),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body(this.siteId);

  final String siteId;

  @override
  Widget build(BuildContext context) {
    final screenSized = MediaQuery.sizeOf(context);
    return Center(
      child: SizedBox(
        height: screenSized.height,
        width: screenSized.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: screenSized.height * 0.5,
                child: _PhotosSection(siteId: siteId),
              ),
              _DescriptionSection(),
            ],
          ),
        ),
      ),
    );
  }
}
