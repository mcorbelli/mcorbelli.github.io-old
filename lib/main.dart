import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_web/core/utils/observer.bloc.dart';
import 'package:url_strategy/url_strategy.dart' as strategy;

import 'package:portfolio_web/core/data/repositories/api.repository.dart';
import 'package:portfolio_web/core/utils/route_manager.dart';

void main() {
  FlutterError.onError = (details) {
    FlutterError.dumpErrorToConsole(details);
  };

  strategy.setPathUrlStrategy();
  Bloc.observer = AppBlocObserver();
  runApp(const Portfolio());
}

class Portfolio extends StatefulWidget {
  const Portfolio({super.key});

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  late RouteManager _routeManager;
  late ApiRepository _apiRepository;

  @override
  void initState() {
    _routeManager = RouteManager();
    _apiRepository = ApiRepository();
    // _apiRepository.updateVisits();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<ApiRepository>.value(
          value: _apiRepository,
        ),
      ],
      child: MaterialApp.router(
        title: 'Corbelli Mattia - Portfolio',
        theme: ThemeData(
          scaffoldBackgroundColor: const Color(0XFF000115),
        ),
        routeInformationParser: _routeManager.infoParser,
        routerDelegate: _routeManager.routerDelegate,
        routeInformationProvider: _routeManager.infoProvider,
      ),
    );
  }
}
