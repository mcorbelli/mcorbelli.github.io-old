import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:portfolio_web/core/data/enums/app_routes.enum.dart';

part 'nav_item.model.freezed.dart';

@freezed
class NavItem with _$NavItem {
  const factory NavItem(AppRoutes route) = _NavItem;
}
