import 'package:bookly/Features/home/persentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/Features/home/persentation/manager/featured_books_cubit/featured_books_state.dart';
import 'package:bookly/Features/home/persentation/views/widgets/custom_book_item.dart';
import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:bookly/core/widgets/custom_loading_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/entities/book_entity.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key, required this.books});

  final List<BookEntity> books;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: height * .3,
      child: ListView.builder(
          physics:  const BouncingScrollPhysics(),
           //itemCount: state.books.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return  Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2),
              child: BookImage(
                image: books[index].image??'',
              ),
            );
          }),
    );
  }
}
