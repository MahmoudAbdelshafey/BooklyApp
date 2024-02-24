import 'package:booklyapp3/core/utils/assets/assets.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Row(),
        Image.asset(AssetsData.logo),
       const SizedBox(height: 20,),
        const Text(
          'Welcome \n Mahmoud Abdelshafey',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,

          ),
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
