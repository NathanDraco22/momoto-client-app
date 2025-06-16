import 'package:flutter/material.dart';

class ProfileDrawer extends StatelessWidget {
  const ProfileDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: SafeArea(
          child: LayoutBuilder(
            builder: (context, constraints) {
              print(constraints.maxHeight);
              return Column(
                children: [
                  SizedBox(height: 8),
                  CircleAvatar(
                    radius: 60,
                  ),
                  SizedBox(height: 16),
                  Text(
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

                  SizedBox(height: 8),

                  ListTile(
                    leading: Icon(Icons.history_edu_sharp),
                    title: Text("Booking History"),
                    onTap: () {},
                  ),

                  ListTile(
                    leading: Icon(Icons.help_outline_outlined),
                    title: Text("Help/Contact"),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.description_outlined),
                    title: Text("Terms and Conditions"),
                    onTap: () {},
                  ),
                  Spacer(),

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

                      label: Icon(Icons.logout_outlined),
                      icon: Text("Logout"),
                    ),
                  ),

                  SizedBox(height: 8),

                  DefaultTextStyle(
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey.shade400,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Version 1.0.0"),
                        Text("Copyright @ 2026"),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
