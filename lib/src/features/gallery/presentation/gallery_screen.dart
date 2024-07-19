import 'package:flutter/material.dart';
import 'package:my_gallery_app/src/features/gallery/data/gallery_data.dart';
import 'package:my_gallery_app/src/features/gallery/presentation/gallery_card.dart';

class GalleryScreen extends StatelessWidget {
  const GalleryScreen({super.key});

  final double gridPadding = 10;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(gridPadding),
      child: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: gridPadding,
        crossAxisSpacing: gridPadding,
        children: galleryData.map((item) => GalleryCard(item: item)).toList(),
      ),
    );
  }
}
