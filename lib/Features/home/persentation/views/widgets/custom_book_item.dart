import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';


class BookImage extends StatelessWidget {
  const BookImage({super.key});

  //final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio:2.8/4,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          //child: CachedNetworkImage(imageUrl: imageUrl,),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.red,
           image: const DecorationImage(
             fit: BoxFit.fill,
               image: AssetImage(AssetsData.testImage)),
          ),
          //child: CachedNetworkImage(imageUrl: imageUrl,),
        ),
      ),
    );
  }
}

