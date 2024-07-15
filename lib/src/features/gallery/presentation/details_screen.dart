import 'package:flutter/material.dart';
import 'package:my_gallery_app/src/features/gallery/domain/gallery_item.dart';

class DetailsScreen extends StatelessWidget {
  final GalleryItem item;

  const DetailsScreen({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Details"),
        backgroundColor: const Color.fromARGB(255, 255, 70, 100),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              height: 450,
              child: Image.asset(
                item.imagePath,
                fit: BoxFit.cover,
                alignment: const Alignment(0.0, -0.7),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              item.imageTitle,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              item.imageDate,
              style: const TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 16),
            Text(
              item.imageDescription,
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
