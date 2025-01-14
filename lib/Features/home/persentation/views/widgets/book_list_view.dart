import 'package:bookly/Features/home/persentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/Features/home/persentation/views/widgets/custom_book_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../domain/entities/book_entity.dart';

class FeaturedBooksListView extends StatefulWidget {
  const FeaturedBooksListView({super.key, required this.books});

  final List<BookEntity> books;

  @override
  State<FeaturedBooksListView> createState() => _FeaturedBooksListViewState();
}

class _FeaturedBooksListViewState extends State<FeaturedBooksListView> {
  late ScrollController _scrollController = ScrollController();

  var nextPage = 1;
  var isLoading = false;

  @override
  void initState() {
    super.initState();
    _scrollController = _scrollController;

    _scrollController.addListener(_scrollListener);
  }

  void _scrollListener() async {
    if (_scrollController.position.pixels >=
        0.7 * _scrollController.position.maxScrollExtent) ;
    if(!isLoading){
      isLoading = true;
      BlocProvider.of<FeaturedBooksCubit>(context)
          .fetchFeaturedBooks(pageNumber: nextPage++);
      isLoading = false;
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: height * .3,
      child: ListView.builder(
          controller: _scrollController,
          physics: const BouncingScrollPhysics(),
          itemCount: widget.books.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2),
              child: BookImage(
                image: widget.books[index].image ?? '',
              ),
            );
          }),
    );
  }
}
