import 'package:flutter/material.dart';
import 'package:toonflix/utils/web_scroll_behavior.dart';

import 'section_container.dart';

class PhotosSection extends StatelessWidget {
  final List<String> imageUrls = [
    "https://blog.wedsites.com/wp-content/uploads/Image-2-20.jpg",
    "https://blog.wedsites.com/wp-content/uploads/Image-5-20.jpg",
    "https://blog.wedsites.com/wp-content/uploads/How-to-Share-Your-Wedding-Website-with-Guests.png",
    "https://blog.wedsites.com/wp-content/uploads/Image1-76.jpg",
    "https://blog.wedsites.com/wp-content/uploads/Image-2-20.jpg",
    "https://blog.wedsites.com/wp-content/uploads/Image-5-20.jpg",
    "https://blog.wedsites.com/wp-content/uploads/How-to-Share-Your-Wedding-Website-with-Guests.png",
    "https://blog.wedsites.com/wp-content/uploads/Image1-76.jpg",
  ];

  PhotosSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Section(
      title: '사진',
      child: LayoutBuilder(
        builder: (context, constraints) {
          double height = constraints.maxWidth / 2;
          if (height > 1000) {
            height = 1000;
          }
          return SizedBox(
            height: height,
            child: ScrollConfiguration(
              behavior: WebScrollBehavior(),
              child: ListView.separated(
                clipBehavior: Clip.none,
                scrollDirection: Axis.horizontal,
                itemCount: imageUrls.length,
                itemBuilder: (context, index) {
                  String imageUrl = imageUrls[index];
                  return Image.network(
                    imageUrl,
                    fit: BoxFit.cover,
                  );
                },
                separatorBuilder: (context, index) =>
                    const SizedBox(width: 8.0),
              ),
            ),
          );
        },
      ),
    );
  }
}
