import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';


class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio:2.8/4,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          child: CachedNetworkImage(imageUrl: imageUrl,),

        ),
      ),
    );
  }
}

