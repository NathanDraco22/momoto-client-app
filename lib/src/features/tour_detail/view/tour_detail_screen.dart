import 'package:flutter/material.dart';

class TourDetailScreen extends StatelessWidget {
  const TourDetailScreen({super.key});

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
      appBar: AppBar(
        title: const Text("Tour Detail"),
      ),
      body: _Body(),
      bottomNavigationBar: BottomAppBar(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  "Price per person",
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                Text(
                  "\$ 100",
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),

            Divider(),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 48,
                  child: OutlinedButton(
                    onPressed: () {},
                    child: const Text("Ask Provider"),
                  ),
                ),
                SizedBox(
                  height: 48,
                  width: MediaQuery.sizeOf(context).width * 0.45,
                  child: FilledButton.tonal(
                    onPressed: () {},
                    child: const Text("Book Now"),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);
    return Center(
      child: SizedBox(
        width: screenSize.width,
        height: screenSize.height,
        child: SingleChildScrollView(
          padding: EdgeInsets.only(bottom: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: screenSize.height * 0.4,
                child: Image.network(
                  "https://images.stockcake.com/public/8/8/6/8866f055-7a80-4a39-9e24-0bbf2c60a220_large/turquoise-canyon-passage-stockcake.jpg",
                  fit: BoxFit.cover,
                ),
              ),

              const SizedBox(height: 8),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      spacing: 8,
                      children: [
                        Text(
                          "This is the tour name",
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                        Text(tourDescription),
                      ],
                    ),

                    SizedBox(height: 16),

                    Column(
                      spacing: 12,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          "What's included",
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),

                        DefaultTextStyle(
                          style: Theme.of(context).textTheme.labelLarge!.copyWith(fontSize: 14),
                          child: Column(
                            spacing: 8,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text("- All meals with coffee and tea"),
                              Text("- Professional guide"),
                              Text("- Security Equipment"),
                              Text("- Free WiFi"),
                            ],
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 16),

                    Divider(),

                    SizedBox(height: 16),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          "Itinerary",
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                        SizedBox(height: 8),

                        ItineraryStepper(),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ItineraryStepper extends StatefulWidget {
  const ItineraryStepper({
    super.key,
  });

  @override
  State<ItineraryStepper> createState() => _ItineraryStepperState();
}

class _ItineraryStepperState extends State<ItineraryStepper> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);
    return Stepper(
      type: StepperType.vertical,
      margin: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      currentStep: _currentIndex,
      onStepTapped: (index) {
        setState(() => _currentIndex = index);
      },
      controlsBuilder: (context, details) => const SizedBox(),
      steps: [
        Step(
          title: Text("Breakfast"),
          isActive: true,
          content: SizedBox(
            width: screenSize.width * 0.8,
            child: Text(
              "Enjoy a delicious breakfast",
            ),
          ),
        ),
        Step(
          title: Text("Discover Granada"),
          isActive: true,
          content: SizedBox(
            width: screenSize.width * 0.8,
            child: Text(
              "Discover the vibrant culture of Granada.",
            ),
          ),
        ),
        Step(
          isActive: true,
          title: Text("Lunch"),
          content: SizedBox(
            width: screenSize.width * 0.8,
            child: Text("Relax and enjoy a delicious lunch."),
          ),
        ),
        Step(
          isActive: true,
          title: Text("Dinner"),
          content: SizedBox(
            width: screenSize.width * 0.8,
            child: Text("Relax and enjoy a delicious dinner."),
          ),
        ),
      ],
    );
  }
}

final tourDescription =
    "Explore the natural beauty of Nicaragua with this 7-day adventure pack. Experience the thrill of volcano boarding, relax on pristine beaches, and immerse yourself in the vibrant culture of Granada.";
