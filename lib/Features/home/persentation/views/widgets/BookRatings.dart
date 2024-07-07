
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styles.dart';

class BookRatings extends StatelessWidget {
  const BookRatings({super.key,
    this.mainAxisAlignment = MainAxisAlignment.center});

  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: mainAxisAlignment,

      children: const [
        Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
        ),
        SizedBox(
          width: 6.3,
        ),
        Text('4.8',
            style:Styles.tittleMedium17),
        SizedBox(
          width: 5,
        ),
        Text(
          '(2458)',
          style:Styles.tittleMedium14,
        ),
      ],
    );
  }
}
