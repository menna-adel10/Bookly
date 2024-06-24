import 'package:flutter/material.dart';
import '../../../../../core/utils/assets.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return AspectRatio(
      aspectRatio:2.8/4,
      child: Container(
        height: height*.3,
        width: width*.25,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          image: const DecorationImage(
              image: AssetImage(
                AssetsData.testImage,
              )
          ),
        ),
      ),
    );
  }
}

