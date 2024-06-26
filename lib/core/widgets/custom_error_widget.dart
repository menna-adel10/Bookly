

import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';

class CustomError extends StatelessWidget {
  const CustomError({super.key,required this.errorMessage});
  final String errorMessage;

  @override
  Widget build(BuildContext context) {
    return Text(errorMessage, style: Styles.tittleMedium18,);
  }
}
