import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'book_list_view.dart';
import 'customAppBar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 8.0),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          CustomAppBar(),
          FeaturedBooksListView(),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: EdgeInsets.only(left:8.0),
            child: Text('Best Seller',
              style: Styles.tittleMedium,),
          )
        ],
      ),
    );
  }
}





