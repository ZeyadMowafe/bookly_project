import 'package:flutter/material.dart';

class SlideFirstLook extends StatelessWidget {
  const SlideFirstLook({super.key, required this.slidingAnimation});

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidingAnimation,
      builder: (context, _) {
        return SlideTransition(
          position: slidingAnimation,
          child: const Text('Read Free Books', textAlign: TextAlign.center),
        );
      },
    );
  }
}
