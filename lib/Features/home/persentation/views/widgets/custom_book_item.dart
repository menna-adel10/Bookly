import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';


class BookImage extends StatelessWidget {
  const BookImage({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio:2.7/4,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CachedNetworkImage(
          imageUrl: imageUrl,
        ),
      ),
    );
  }
}

