
import 'package:flutter/material.dart';

import 'custom_book_item.dart';

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
              child: BookImage(
              imageUrl: 'https://www.freepik.com/free-photo/yellow-mug-books_1455012.htm#query=book&position=0&from_view=keyword&track=ais_hybrid&uuid=e6a5d1d3-451b-4b0a-aea9-6f547882c297',              ),
            );
          }),
    );
  }
}
