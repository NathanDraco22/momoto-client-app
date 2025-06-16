import 'package:flutter/material.dart';
import 'package:panorama_viewer/panorama_viewer.dart';

class PanoramicScreen extends StatelessWidget {
  const PanoramicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const _RootScaffold();
  }
}

class _RootScaffold extends StatelessWidget {
  const _RootScaffold();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: const _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: PanoramaViewer(
        sensorControl: SensorControl.orientation,
        sensitivity: 1.8,
        maxZoom: 1.5,
        maxLongitude: 150,
        minLongitude: -150,
        maxLatitude: 50,
        minLatitude: -30,
        child: Image.asset('assets/panoramic-demo.jpg'),
      ),
    );
  }
}
