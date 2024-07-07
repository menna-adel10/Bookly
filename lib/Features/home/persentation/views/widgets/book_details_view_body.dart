import 'package:bookly/Features/home/persentation/views/widgets/BookRatings.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'best_seller_list_view_Item.dart';
import 'book_details_appBar.dart';
import 'books_action.dart';
import 'custom_book_item.dart';


class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {

    var width = MediaQuery.of(context).size.width;
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const BookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width*.2),
            child: const BookImage(),
          ),
          const SizedBox(height: 8,),
          const Text('The Jungle Book',
            style: Styles.tittleMedium30),
          const SizedBox(height: 4,),
           Opacity(
             opacity: .7,
             child:  Text('Rudgard Kipling',
                style: Styles.tittleMedium18.copyWith(
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w600,
                )),
           ),
          const SizedBox(height: 18,),
          const BookRatings(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          const SizedBox(
            height: 37,
          ),
          const BookAction(),

          const SizedBox(
            height: 40,
          ),
           Align(
             alignment: Alignment.centerLeft,
             child: Text(
                'You can also like',
                style: Styles.tittleMedium16.copyWith(
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
           ),
           const SizedBox(
            height: 16,
          ),
           const SimilarBooksListView(),
        ],
      ),
    );
  }

}




class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height* 0.18,

      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index){
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 2),
              child: BookImage(),
            );
          }),
    );
  }
}

