import 'package:flutter/material.dart';
import 'package:my_gallery_app/src/features/gallery/domain/gallery_item.dart';
import 'package:my_gallery_app/src/features/gallery/presentation/details_screen.dart';

class GalleryCard extends StatelessWidget {
  const GalleryCard({super.key, required this.item});

  final GalleryItem item;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (contex) {
              return Center(
                child: DetailsScreen(item: item),
              );
            },
          ),
        );
      },
      child: Card(
        child: Column(
          children: [
            Expanded(
              child: SizedBox(
                width: double.infinity,
                child: ClipRRect(
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(8.0),
                  ),
                  child: Image.asset(
                    item.imagePath,
                    fit: BoxFit.fitWidth,
                    alignment: const Alignment(0.0, -0.7),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: double.infinity,
                child: Text(
                  item.imageTitle,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
