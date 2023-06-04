import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:portfolio_web/core/data/app_routes.enum.dart';

part 'nav_item.model.freezed.dart';

@freezed
class NavItem with _$NavItem {
  const factory NavItem({
    required AppRoutes route,
    required String label,
  }) = _NavItem;
}
