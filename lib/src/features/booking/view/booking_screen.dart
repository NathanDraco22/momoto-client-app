import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookingScreen extends StatelessWidget {
  const BookingScreen({super.key});

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
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Booking"),
        centerTitle: true,
      ),
      body: const _Body(),
      bottomNavigationBar: BottomAppBar(
        height: 150,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FilledButton.icon(
                  onPressed: () {},
                  label: const Text(
                    "Add Coupon",
                  ),
                  icon: const Icon(Icons.add_box_outlined),
                ),

                Text(
                  "Total: \$100.00",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ],
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              height: 56,
              child: FilledButton.tonal(
                onPressed: () {},
                child: Text(
                  "Confirm Booking",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
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
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 8),
            Text(
              "Number of People",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            SizedBox(
              height: 120,
              child: CupertinoPicker(
                itemExtent: 50,
                magnification: 1.1,
                onSelectedItemChanged: (value) {},
                children: List.generate(
                  15,
                  (index) => Center(
                    child: Text(
                      "${index + 1}",
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              "Booking Summary",
              style: Theme.of(context).textTheme.headlineSmall,
            ),

            const SizedBox(height: 16),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  flex: 2,
                  child: Text(
                    "Super cool, special tour for your dreams an happiness",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.grey.shade600,
                    ),
                  ),
                ),
                const Flexible(
                  child: Text(
                    "July 15, 2024",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),

            const BookingSummaryRow(
              title: "People",
              subtitle: "3",
            ),

            const BookingSummaryRow(
              title: "Price per Person",
              subtitle: "\$100.00",
            ),

            const BookingSummaryRow(
              title: "Discount by group",
              subtitle: "\$15.00",
            ),

            const BookingSummaryRow(
              title: "Wellcome Coupon (5%)",
              subtitle: "\$5.00",
            ),
          ],
        ),
      ),
    );
  }
}

class BookingSummaryRow extends StatelessWidget {
  const BookingSummaryRow({
    super.key,
    required this.title,
    required this.subtitle,
  });

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(
          height: 30,
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey.shade600,
              ),
            ),
            Text(
              subtitle,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
