import 'package:easy_localization/easy_localization.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

const _socialKey = 'homepage.footer.socials';

enum Socials {
  github(
    icon: EvaIcons.github,
    url: 'https://github.com/mcorbelli',
    localeKey: '$_socialKey.github',
  ),
  twitter(
    icon: EvaIcons.twitter,
    url: 'https://twitter.com/_marbelli_',
    localeKey: '$_socialKey.twitter',
  ),
  linkedin(
    icon: EvaIcons.linkedin,
    url: 'https://www.linkedin.com/in/corbellimattia/',
    localeKey: '$_socialKey.linkedin',
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

  Uri get uri => Uri.parse(url);

  void openLink() async {
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    }
  }
}