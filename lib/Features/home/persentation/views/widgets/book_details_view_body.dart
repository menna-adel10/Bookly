import 'package:bookly/Features/home/data/models/BookModel.dart';
import 'package:flutter/material.dart';
import 'package:bookly/Features/home/persentation/views/widgets/similar_book_list_view.dart';
import 'package:bookly/core/utils/styles.dart';
import 'book_details_appBar.dart';
import 'book_details_image_section.dart';
import 'books_action.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {

    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const BookDetailsAppBar(),
                 BookDetailsSection(
                  book:  bookModel,
                ),
                const SizedBox(height: 37,),
                const BookAction(),

                const Expanded(
                  child: SizedBox(height: 40,),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'You might also like',
                    style: Styles.tittleMedium16.copyWith(
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 16,),
                const SimilarBooksListView(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}


