import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieAnimation extends StatelessWidget {
  final double size;
  final String animationName;
  const LottieAnimation(
      {super.key, this.size = 100, this.animationName = 'not_found_route'});

  @override
  Widget build(BuildContext context) {
    return Lottie.asset(
      'assets/animation/$animationName.json',
      width: size,
      height: size,
    );
  }
}
