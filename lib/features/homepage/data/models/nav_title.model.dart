import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:portfolio_web/core/data/enums/app_routes.enum.dart';

part 'nav_title.model.freezed.dart';

@freezed
class NavTitle with _$NavTitle {
  const factory NavTitle(AppRoutes route) = _NavTitle;
}
