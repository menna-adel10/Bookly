import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'BookRatings.dart';
import 'custom_book_item.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});


  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.2),
          child: const BookImage(
            imageUrl: 'https://www.freepik.com/free-photo/yellow-mug-books_1455012.htm#query=book&position=0&from_view=keyword&track=ais_hybrid&uuid=e6a5d1d3-451b-4b0a-aea9-6f547882c297',
          ),
        ),
        const SizedBox(height: 8,),
        const Text(
          'The Jungle Book',
          style: Styles.tittleMedium30,
        ),
        const SizedBox(height: 4,),
        Opacity(
          opacity: 0.7,
          child: Text(
            'Rudyard Kipling',
            style: Styles.tittleMedium18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SizedBox(height: 18,),
        const BookRatings(
          rating: '5',

          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ],
    );
  }
}