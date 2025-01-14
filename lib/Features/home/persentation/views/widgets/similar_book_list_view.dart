import 'package:bookly/Features/home/persentation/manager/similar_books_cubit/similar_book_state.dart';
import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:bookly/core/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'custom_book_item.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {

    return BlocBuilder<SimilarBookCubit,SimilarBookState>(builder: (context,state)
    {
      if (state is SimilarBooksSuccess) {
        return SizedBox(
          height: MediaQuery
              .of(context)
              .size
              .height * 0.18,

          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return  Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2),
                  child: BookImage(
                    image:
                    state.books[index].volumeInfo.imageLinks.thumbnail ??'',
                  ),
                );
              }),
        );
      } else if (state is SimilarBooksFailure) {
        return CustomError(errorMessage: state.errorMessage);
      } else {
        return const CustomLoadingIndicator();
      }
    }
    );
  }
}
