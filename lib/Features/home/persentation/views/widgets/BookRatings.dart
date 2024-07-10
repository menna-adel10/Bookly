import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styles.dart';

class BookRatings extends StatelessWidget {
  const BookRatings(
      {super.key, this.mainAxisAlignment = MainAxisAlignment.center, required this.rating});

  final MainAxisAlignment mainAxisAlignment;
  final String rating;


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: const [
        Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
          size: 16,
        ),
        SizedBox(
          width: 6.3,
        ),
        Text('4.8', style: Styles.tittleMedium17),
        SizedBox(
          width: 5,
        ),
        Text(
          '(2458)',
          style: Styles.tittleMedium14,
        ),
      ],
    );
  }
}
