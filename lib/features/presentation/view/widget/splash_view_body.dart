import 'package:bookly_project/constance.dart';
import 'package:bookly_project/core/utils/assets.dart';
import 'package:bookly_project/features/home/presentation/view/home_view.dart';
import 'package:bookly_project/features/presentation/view/widget/slideFirstLook.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    initSlideAnimation();
    NavigateHome();
  }

  @override
  void dispose() {
    // TODO: implement dispose
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
        const SizedBox(height: 4),
        SlideFirstLook(slidingAnimation: slidingAnimation),
      ],
    );
  }

  void initSlideAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    slidingAnimation = Tween<Offset>(
      begin: const Offset(5, 5),
      end: const Offset(0, -1),
    ).animate(animationController);

    animationController.forward();
  }
}

void NavigateHome() {
  Future.delayed(Duration(seconds: 2), () {
    Get.to(
      () => HomeView(),
      transition: Transition.fade,
      duration: KtransitionDuration,
    );
  });
}
