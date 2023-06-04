import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:url_launcher/url_launcher.dart';

part 'social_icon.model.freezed.dart';

@freezed
class SocialIcon with _$SocialIcon {
  const SocialIcon._();

  const factory SocialIcon({
    required IconData icon,
    required String url,
    String? tooltip,
  }) = _SocialIcon;

  Uri get uri => Uri.parse(url);

  void openLink() async {
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    }
  }
}
