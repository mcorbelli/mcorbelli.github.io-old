import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:portfolio_web/core/localizations/translations.g.dart';

const _socialKey = 'homepage.footer.socials';

enum Socials {
  github(
    icon: EvaIcons.github,
    url: 'https://github.com/mcorbelli',
    tooltipKey: '$_socialKey.github',
  ),
  twitter(
    icon: EvaIcons.twitter,
    url: 'https://twitter.com/_marbelli_',
    tooltipKey: '$_socialKey.twitter',
  ),
  linkedin(
    icon: EvaIcons.linkedin,
    url: 'https://www.linkedin.com/in/corbellimattia',
    tooltipKey: '$_socialKey.linkedin',
  );

  const Socials({
    required this.icon,
    required this.url,
    this.tooltipKey,
  });

  final IconData icon;
  final String url;
  final String? tooltipKey;

  String? get tooltip {
    if (tooltipKey != null) {
      return t[tooltipKey!];
    }
    return null;
  }

  Uri get uri => Uri.parse(url);

  void openLink() async {
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    }
  }
}
