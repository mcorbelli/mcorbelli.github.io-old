import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:portfolio_web/core/data/repositories/remote.repository.dart';

part 'analytics_event.dart';
part 'analytics_state.dart';

part 'analytics_bloc.freezed.dart';

class AnalyticsBloc extends Bloc<AnalyticsEvent, AnalyticsState> {
  late final RemoteRepository _remoteRepo;

  AnalyticsBloc(
    this._remoteRepo,
  ) : super(const AnalyticsState()) {
    on<_FirstPortfolioAccess>(_onFirstPortfolioAccess);
  }

  void _onFirstPortfolioAccess(
    _FirstPortfolioAccess event,
    Emitter<AnalyticsState> emit,
  ) async {
    await _remoteRepo.updateVisits();
  }
}
