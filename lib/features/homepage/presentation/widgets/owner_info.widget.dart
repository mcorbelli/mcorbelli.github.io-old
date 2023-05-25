import 'package:flutter/material.dart';

import 'package:portfolio_web/core/styles/text.theme.dart';

class OwnerInfo extends StatelessWidget {
  const OwnerInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        DisplayLarge('portfolio'),
        DisplaySmall('developed_in'),
      ],
    );
  }
}
