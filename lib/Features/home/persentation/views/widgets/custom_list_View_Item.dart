import 'package:flutter/material.dart';
import '../../../../../core/utils/assets.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    //var height = MediaQuery.of(context).size.height;
    // var width = MediaQuery.of(context).size.width;
    return AspectRatio(
      aspectRatio:2.8/4,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image:  DecorationImage(
              fit: BoxFit.fill,
                image: NetworkImage(
                    imageUrl,
                )
            ),
          ),
        ),
      ),
    );
  }
}

