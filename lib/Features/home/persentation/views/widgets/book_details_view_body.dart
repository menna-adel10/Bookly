import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'book_details_appBar.dart';
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
            padding: EdgeInsets.symmetric(horizontal: width*.15),
            child: const BookImage(),
          ),


        ],
      ),
    );
  }

}



