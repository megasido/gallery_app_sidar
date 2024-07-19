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

  List<String> appBarTitles = [
    "My Gallery",
    "About Me",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appBarTitles[currentindex]),
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
