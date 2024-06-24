import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children:[
        CustomAppBar(),
      ],
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 40),
      child: Row(
        children: [
          Text('B O O K L Y',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,

          ),
          ),
          Spacer(),
          IconButton(onPressed: (){},
              icon:const Icon(
            Icons.search,
                size: 36,
          ))
        ],
      ),
    );
  }
}
