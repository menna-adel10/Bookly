

import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  //adelo range elana 3ayzo
  late Animation<Offset> slidingAnimation;
  
  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 100)
    );
    slidingAnimation =
        Tween<Offset>(begin: Offset(0, 2), end: Offset.zero).animate(
            animationController);
    animationController.forward();

  }

  @override
  void dispose(){
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        buildAnimatedBuilder(),


      ],
    );
  }

  AnimatedBuilder buildAnimatedBuilder() {
    return AnimatedBuilder(
        animation: slidingAnimation,
        builder: (context,_) {
          return
          SlideTransition(
            position: slidingAnimation,

            child: const Text('Read free books',
              textAlign: TextAlign.center,
            ),
          );
        });
  }
}
