import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';

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
          versionLabel = 'v${snapshot.data!.version}';
        }

        return Text(
          versionLabel,
          style: const TextStyle(
            fontSize: 10.0,
            color: Colors.white,
          ),
        );
      },
    );
  }
}
