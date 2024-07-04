import 'package:bookly/Features/home/persentation/views/widgets/book_details_view_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart.';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
         body: SafeArea(child: BookDetailsViewBody()),

      ),
    );

  }
}

