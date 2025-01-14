

import 'package:flutter/material.dart';

import '../../../Features/home/persentation/manager/featured_books_cubit/featured_books_state.dart';

SnackBar buildErrorWidget(FeaturedBooksPaginationFailure state) {
  return SnackBar(

    content: Text(
      state.errorMessage,
      style: const TextStyle(color: Colors.black,),
    ),
    duration: const Duration(seconds: 3),
  );


}