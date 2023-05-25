import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';

import 'package:portfolio_web/core/styles/text.theme.dart';

class AppVersion extends StatelessWidget {
  const AppVersion({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<PackageInfo>(
      future: PackageInfo.fromPlatform(),
      builder: (_, snapshot) {
        String versionLabel = 'Loading ...';

        if (snapshot.hasError) {
          versionLabel = 'Something went wrong :(';
        } else if (snapshot.hasData) {
          versionLabel = 'V ${snapshot.data!.version}';
        }

        return LabelSmall(versionLabel);
      },
    );
  }
}
