import 'package:bookly/Features/home/persentation/manager/newest_books/newest_books_cubit.dart';
import 'package:bookly/Features/home/persentation/manager/newest_books/newest_books_state.dart';
import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:bookly/core/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'best_seller_list_view_Item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit,NewestBooksState>(
        builder:(context,state) {
          if (state is NewestBooksSuccess) {
            return ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: state.books.length,
                itemBuilder: (context, index) {
                  return  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: BestSellerItem(
                      bookModel: state.books[index],
                    ),
                  );
                });
          } else if (state is NewestBooksFailure) {
            return CustomError(errorMessage: state.errorMessage);
          }
          else{
            return const CustomLoadingIndicator();
          }

        }
    );

  }
}




