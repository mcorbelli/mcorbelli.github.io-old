import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:portfolio_web/core/data/enums/app_routes.enum.dart';

part 'nav_title.model.freezed.dart';

@freezed
class NavTitle with _$NavTitle {
  const factory NavTitle({
    required String label,
    IconData? icon,
    AppRoutes? route,
  }) = _NavTitle;
}
