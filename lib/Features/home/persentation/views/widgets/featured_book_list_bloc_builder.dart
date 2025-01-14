import 'package:bookly/Features/home/persentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/Features/home/persentation/manager/featured_books_cubit/featured_books_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/utils/functions/build_error_snack_bar.dart';
import '../../../domain/entities/book_entity.dart';
import 'book_list_view.dart';

class FeaturedBooksListViewBlocBuilder extends StatefulWidget {
  const FeaturedBooksListViewBlocBuilder({super.key});

  @override
  State<FeaturedBooksListViewBlocBuilder> createState() => _FeaturedBooksListViewBlocBuilderState();
}

class _FeaturedBooksListViewBlocBuilderState extends State<FeaturedBooksListViewBlocBuilder> {

  List<BookEntity>books=[];
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FeaturedBooksCubit, FeaturedBooksState>(
      listener:(context, state){
        if(state is FeaturedBooksSuccess){
          books.addAll(state.books);
        }
        if (state is FeaturedBooksPaginationFailure){
          ScaffoldMessenger.of(context).showSnackBar(buildErrorWidget(state));
        }
      },
      builder: (context, state) {
        if (state is FeaturedBooksSuccess || state is FeaturedBooksPaginationLoading|| state is FeaturedBooksPaginationFailure) {
          return FeaturedBooksListView(books:books);
        } else if (state is FeaturedBooksFailure) {
          return Text(state.errorMessage);
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}

