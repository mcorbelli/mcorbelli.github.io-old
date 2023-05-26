import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'package:portfolio_web/core/styles/text.theme.dart';

class OwnerInfo extends StatelessWidget {
  const OwnerInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        DisplayLarge(tr('portfolio')),
        DisplaySmall(tr('developed_in')),
      ],
    );
  }
}
