import 'package:flutter/material.dart';
import 'package:my_gallery_app/src/features/gallery/data/gallery_data.dart';
import 'package:my_gallery_app/src/features/gallery/presentation/gallery_card.dart';

class GalleryScreen extends StatelessWidget {
  const GalleryScreen({super.key});

  final double gridPadding = 20;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(gridPadding),
      child: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: gridPadding,
        crossAxisSpacing: gridPadding,
        children: [
          GalleryCard(item: galleryData[0]),
          GalleryCard(item: galleryData[1]),
          GalleryCard(item: galleryData[2]),
          GalleryCard(item: galleryData[3]),
          GalleryCard(item: galleryData[4]),
          GalleryCard(item: galleryData[5]),
          GalleryCard(item: galleryData[6]),
          GalleryCard(item: galleryData[7]),
        ],
      ),
    );
  }
}
