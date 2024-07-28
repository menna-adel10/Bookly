import 'package:bookly/core/utils/appRouter.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24,right: 24,top: 40, bottom: 20),
      child: Row(
        children: [
          const Text('B O O K L Y',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,

            ),
          ),
          const Spacer(),
          IconButton(onPressed: (){
            GoRouter.of(context).push(AppRouter.kSeachView);
          },
              icon:const Icon(
                Icons.search,
                size: 36,
              ))
        ],
      ),
    );
  }
}