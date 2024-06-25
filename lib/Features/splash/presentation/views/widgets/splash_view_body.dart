import 'package:bookly/Features/home/persentation/views/home_view.dart';
import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
    animationControllerBuilder();
//page tzhar f 2 seconds and then navigate to homepage
    navigateToHome();
  }

  void navigateToHome() {
     Future.delayed(const Duration(seconds: 2), (){
      Get.to(()=> const
      HomeView(), transition: Transition.fade, duration: kTransitionDuration);
    });
  }

  void animationControllerBuilder() {
    animationController = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 100)
    );
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero).animate(
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
        const Text('B O O K L Y',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
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
