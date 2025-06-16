import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

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
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(height: 8),
            const CircleAvatar(
              radius: 60,
            ),
            const SizedBox(height: 16),
            const Text(
              "John Doe",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),

            Text(
              "jonh.doe@me.com",
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey.shade600,
              ),
            ),

            Container(
              width: double.infinity,
              decoration: const BoxDecoration(color: Colors.white),
              child: const Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.history_edu_sharp),
                    title: Text("Booking History"),
                  ),
                  ListTile(
                    leading: Icon(Icons.help_outline_outlined),
                    title: Text("Terms and Conditions"),
                  ),
                  ListTile(
                    leading: Icon(Icons.logout),
                    title: Text("Logout"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
