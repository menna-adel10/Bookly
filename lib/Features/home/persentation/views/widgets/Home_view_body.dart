import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'book_list_view.dart';
import 'customAppBar.dart';
import 'custom_list_View_Item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children:[
        CustomAppBar(),
        FeaturedBooksListView(),
      ],
    );
  }
}





