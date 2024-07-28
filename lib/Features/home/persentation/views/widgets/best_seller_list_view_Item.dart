import 'package:bookly/Features/home/data/models/BookModel.dart';
import 'package:bookly/Features/home/persentation/views/widgets/custom_book_item.dart';
import 'package:bookly/core/utils/appRouter.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/styles.dart';
import 'BookRatings.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;


    return GestureDetector(
      onTap :(){
        GoRouter.of(context).push(
            AppRouter.kBookDetailsView, extra: bookModel);
      },

      child: SizedBox(
        height: 120,
        child: Row(
          children: [
            BookImage(imageUrl: bookModel.volumeInfo.imageLinks.thumbnail),
            
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: width * 0.5,
                    child:  Text(
                      bookModel.volumeInfo.title,
                      maxLines: 2,
                      //to make long paragraph with points
                      overflow: TextOverflow.ellipsis,
                      style: Styles.tittleMedium20,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                   Text(
                    bookModel.volumeInfo.authors[0],
                    style: Styles.tittleMedium14,
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      Text('Free',
                        style: Styles.tittleMedium20.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                       BookRatings(
                        rating: bookModel.volumeInfo.maturityRating,
                        //count: bookModel.volumeInfo.ratingCount,
                      ),

                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


