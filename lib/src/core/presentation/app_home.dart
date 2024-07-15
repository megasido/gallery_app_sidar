import 'package:flutter/material.dart';
import 'package:my_gallery_app/src/features/gallery/presentation/gallery_screen.dart';
import 'package:my_gallery_app/src/features/profile/presentation/profile_screen.dart';

class AppHome extends StatefulWidget {
  const AppHome({super.key});

  @override
  State<AppHome> createState() => _AppHomeState();
}

class _AppHomeState extends State<AppHome> {
  int currentindex = 0;
  List<Widget> screens = [
    const GalleryScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "My Gallery",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromARGB(255, 255, 70, 100),
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentindex = index;
          });
        },
        selectedIndex: currentindex,
        indicatorColor: Colors.pink[100],
        destinations: const [
          NavigationDestination(icon: Icon(Icons.image), label: "photos"),
          NavigationDestination(icon: Icon(Icons.person), label: "profile"),
        ],
      ),
      body: screens[currentindex],
    );
  }
}
