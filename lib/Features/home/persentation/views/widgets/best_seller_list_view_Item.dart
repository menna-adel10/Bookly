import 'package:bookly/Features/home/domain/entities/book_entity.dart';
import 'package:bookly/core/utils/appRouter.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/styles.dart';
import 'BookRatings.dart';
import 'custom_book_item.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key, required this.bookEntity});

  final BookEntity bookEntity;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(
          AppRouter.kBookDetailsView,
          extra: bookEntity,
        );
      },

      child: SizedBox(
        height: 120,
        child: Row(
          children: [
            BookImage(image: bookEntity.image ?? ''),
            const SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: width * 0.5,
                    child: Text(
                      bookEntity.title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.tittleMedium20,
                    ),
                  ),
                  const SizedBox(height: 3),
                  Text(
                    bookEntity.authorName ?? 'Unknown Author',
                    style: Styles.tittleMedium14,
                  ),
                  const SizedBox(height: 3),
                  Row(
                    children: [
                      Text(
                        bookEntity.price != null ? 'Free' : 'Price Not Available',
                        style: Styles.tittleMedium20.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      BookRatings(
                        rating: bookEntity.rating.toString(),
                        // Uncomment if ratingCount is available
                        //count: bookEntity.rating,
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
