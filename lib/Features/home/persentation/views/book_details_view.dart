import 'package:bookly/Features/home/data/models/BookModel.dart';
import 'package:bookly/Features/home/persentation/manager/similar_books_cubit/similar_book_cubit.dart';
import 'package:bookly/Features/home/persentation/views/widgets/book_details_view_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart.';
import 'package:flutter_bloc/flutter_bloc.dart';


class BookDetailsView extends StatefulWidget {
  const BookDetailsView({super.key, required this.bookModel});

  final BookModel bookModel;
  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}


class _BookDetailsViewState extends State<BookDetailsView> {

  void initState(){
    BlocProvider.of<SimilarBookCubit>(context).fetchSimilarBooks(
       category:  widget.bookModel.volumeInfo.categories![0],
    );
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
         body: SafeArea(child: BookDetailsViewBody()),
      ),
    );
  }
}

