import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styles.dart';

class BestSellerList extends StatelessWidget {
  const BestSellerList({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return SizedBox(
      height: 120,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.8 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                  image: AssetImage(
                    AssetsData.testImage,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: width * 0.5,
                child: const Text(
                  'Harry Potter and the Goblet of Fire',
                  //to make long paragraph with points
                  //overflow: TextOverflow.ellipsis
                  style: Styles.tittleMedium20,
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              const Text(
                'J.K Rowling',
                style: Styles.tittleMedium14,
              ),
              const SizedBox(
                height: 3,
              ),
              Row(
                children: [
                  Text('19.99',
                    style: Styles.tittleMedium20.copyWith(
                      fontWeight: FontWeight.bold,
                    ),

                  ),

                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}