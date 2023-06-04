import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';

import 'package:portfolio_web/core/styles/typograph.theme.dart';

class AppVersion extends StatelessWidget {
  const AppVersion({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<PackageInfo>(
      future: PackageInfo.fromPlatform(),
      builder: (_, snapshot) {
        const prefix = 'homepage.footer.version';
        String versionLabel = tr('$prefix.loading');

        if (snapshot.hasError) {
          versionLabel = tr('$prefix.error');
        } else if (snapshot.hasData) {
          versionLabel = 'V ${snapshot.data!.version}';
        }

        return BodyMedium(versionLabel);
      },
    );
  }
}
