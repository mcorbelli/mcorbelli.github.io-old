import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:package_info_plus/package_info_plus.dart';

import 'package:portfolio_web/core/localizations/translations.g.dart';
import 'package:portfolio_web/core/data/repositories/info.repository.dart';
import 'package:portfolio_web/core/styles/typograph.theme.dart';

class AppVersion extends StatefulWidget {
  const AppVersion({
    super.key,
    this.margin = EdgeInsets.zero,
  });

  final EdgeInsets margin;

  @override
  State<AppVersion> createState() => _AppVersionState();
}

class _AppVersionState extends State<AppVersion> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<PackageInfo>(
      future: _onPackageInfoFuture(),
      builder: (_, snapshot) {
        String versionLabel = t.ui_components.footer.version.loading;

        if (snapshot.hasError) {
          versionLabel = t.ui_components.footer.version.error;
        } else if (snapshot.hasData) {
          versionLabel = 'V ${snapshot.data!.version}';
        }

        return Padding(
          padding: widget.margin,
          child: BodySmall(versionLabel),
        );
      },
    );
  }

  Future<PackageInfo>? _onPackageInfoFuture() async {
    final repo = RepositoryProvider.of<InfoRepository>(context);
    return (await repo.getPackageInfo());
  }
}
