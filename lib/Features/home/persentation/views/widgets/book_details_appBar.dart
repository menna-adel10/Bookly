import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookDetailsAppBar extends StatelessWidget {
  const BookDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: (){},
          iconSize: 35,
          icon: const Icon(Icons.close),
        ),
        //const Spacer(),
        IconButton(
          onPressed: () {},
          icon: const Icon(FontAwesomeIcons.shoppingCart),
        ),
      ],
    );
  }
}
