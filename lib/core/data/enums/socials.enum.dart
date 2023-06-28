import 'package:easy_localization/easy_localization.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

const socialKey = 'homepage.footer.socials';

enum Socials {
  github(
    icon: EvaIcons.github,
    url: 'https://github.com/',
    localeKey: '$socialKey.github',
  ),
  twitter(
    icon: EvaIcons.twitter,
    url: 'https://twitter.com/',
    localeKey: '$socialKey.twitter',
  ),
  linkedin(
    icon: EvaIcons.linkedin,
    url: 'https://linkedin.com/',
    localeKey: '$socialKey.linkedin',
  );

  const Socials({
    required this.icon,
    required this.url,
    this.localeKey,
  });

  final IconData icon;
  final String url;
  final String? localeKey;

  String? get tooltip {
    if (localeKey != null) {
      return tr(localeKey!);
    }
    return null;
  }
}
