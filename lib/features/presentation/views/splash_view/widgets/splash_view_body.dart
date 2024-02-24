import 'package:booklyapp3/core/Themes/Themes.dart';
import 'package:booklyapp3/core/utils/assets/assets.dart';
import 'package:booklyapp3/features/presentation/views/splash_view/widgets/slidingText.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Row(),
        Image.asset(AssetsData.logo),
        const SizedBox(
          height: 20,
        ),
        const SlidingText()
      ],
    );
  }
}
