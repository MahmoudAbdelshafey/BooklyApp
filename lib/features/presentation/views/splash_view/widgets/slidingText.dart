import 'package:booklyapp3/core/Themes/Themes.dart';
import 'package:flutter/material.dart';

class SlidingText extends StatefulWidget {
  const SlidingText({super.key});

  @override
  State<SlidingText> createState() => _SlidingTextState();
}

class _SlidingTextState extends State<SlidingText> with SingleTickerProviderStateMixin  {
  late AnimationController animationController;

  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = AnimationController(
        vsync: this,
        duration: const Duration(
            seconds: 1
        ));
    slidingAnimation = Tween<Offset>(
        begin: const Offset(0, 9),
        end: Offset.zero
    ).animate(animationController);
    animationController.forward();

  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidingAnimation,
      builder:(context,_) => SlideTransition(
        position:slidingAnimation,
        child: Text(
          'Welcome \n Mahmoud Abdelshafey',
          style: TextStyle(
            color: MyThemes.lightTheme.textTheme.headlineSmall!.color,
            fontSize: 20,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
