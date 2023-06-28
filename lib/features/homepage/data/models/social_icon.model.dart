import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:portfolio_web/core/data/enums/socials.enum.dart';

part 'social_icon.model.freezed.dart';

@freezed
class SocialIcon with _$SocialIcon {
  const SocialIcon._();

  const factory SocialIcon(
    Socials type,
  ) = _SocialIcon;

  Uri get uri => Uri.parse(type.url);

  void openLink() async {
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    }
  }
}
