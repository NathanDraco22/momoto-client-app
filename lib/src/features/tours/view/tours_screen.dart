import 'package:flutter/material.dart';
import 'package:turismo_client/src/features/tour_detail/view/tour_detail_screen.dart';

class ToursScreen extends StatelessWidget {
  const ToursScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const _RootScaffold();
  }
}

class _RootScaffold extends StatelessWidget {
  const _RootScaffold();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.separated(
        padding: const EdgeInsets.all(12),
        separatorBuilder: (context, index) {
          return const SizedBox(
            height: 16,
          );
        },
        itemCount: 30,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.of(context, rootNavigator: true).push(
                MaterialPageRoute(builder: (context) => const TourDetailScreen()),
              );
            },
            child: Container(
              height: 300,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Flexible(
                    flex: 5,
                    child: ClipRRect(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(12),
                      ),
                      child: Image.network(
                        "https://images.stockcake.com/public/8/8/6/8866f055-7a80-4a39-9e24-0bbf2c60a220_large/turquoise-canyon-passage-stockcake.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 4,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Somoto Canyon",
                                style: Theme.of(context).textTheme.headlineMedium,
                              ),
                              Text(
                                "June 25, 2023",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            "by: A great tour company",
                            style: Theme.of(context).textTheme.bodyLarge,
                            textAlign: TextAlign.start,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.location_on_outlined),
                                  Text(
                                    "Departs from:\nMatagalpa, Matagalpa",
                                    textAlign: TextAlign.start,
                                  ),
                                ],
                              ),

                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    "C\$ 1800",
                                    style: Theme.of(context).textTheme.bodyLarge,
                                  ),
                                  Text(
                                    "\$ 50",
                                    style: Theme.of(context).textTheme.bodyLarge,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
