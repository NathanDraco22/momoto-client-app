import 'package:flutter/material.dart';

class ProfileDrawer extends StatelessWidget {
  const ProfileDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SafeArea(
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

              const SizedBox(height: 8),

              ListTile(
                leading: const Icon(Icons.history_edu_sharp),
                title: const Text("Booking History"),
                onTap: () {},
              ),

              ListTile(
                leading: const Icon(Icons.help_outline_outlined),
                title: const Text("Help/Contact"),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.description_outlined),
                title: const Text("Terms and Conditions"),
                onTap: () {},
              ),
              const Spacer(),

              SizedBox(
                width: double.infinity,
                child: OutlinedButton.icon(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(
                      color: Colors.red.shade200,
                      width: 2,
                    ),
                    foregroundColor: Colors.red.shade200,
                    overlayColor: Colors.red,
                  ),

                  label: const Icon(Icons.logout_outlined),
                  icon: const Text("Logout"),
                ),
              ),

              const SizedBox(height: 8),

              DefaultTextStyle(
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey.shade400,
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Version 1.0.0"),
                    Text("Copyright @ 2026"),
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
