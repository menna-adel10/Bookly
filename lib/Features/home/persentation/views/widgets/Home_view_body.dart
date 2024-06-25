import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'book_list_view.dart';
import 'customAppBar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeaturedBooksListView(),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(
              'Best Seller',
              style: Styles.tittleMedium18,
            ),
          ),
          BestSellerList(),
        ],
      ),
    );
  }
}

class BestSellerList extends StatelessWidget {
  const BestSellerList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0, top: 10),
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
                  )),
                ),
              ),
            ),
            const Expanded(
              child:  Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Harry Potter and the Goblet of Fire',
                    style: Styles.tittleMedium20,
                    ),
                    Text('J.K Rowling',
                      style: Styles.tittleMedium14,

                    ),

                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
