import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_strategy/url_strategy.dart' as strategy;

import 'package:portfolio_web/core/styles/portfolio.theme.dart';
import 'package:portfolio_web/core/utils/observer.bloc.dart';
import 'package:portfolio_web/core/data/repositories/remote.repository.dart';
import 'package:portfolio_web/core/utils/route_manager.dart';
import 'package:portfolio_web/core/data/locales.enum.dart';

Future<void> main() async {
  FlutterError.onError = (details) {
    FlutterError.dumpErrorToConsole(details);
  };

  await EasyLocalization.ensureInitialized();
  strategy.setPathUrlStrategy();
  Bloc.observer = AppBlocObserver();

  runApp(EasyLocalization(
    supportedLocales: Locales.available,
    fallbackLocale: Locales.fallback,
    path: 'assets/localization',
    child: const Portfolio(),
  ));
}

class Portfolio extends StatefulWidget {
  const Portfolio({super.key});

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  late RouteManager _routeManager;
  late RemoteRepository _apiRepository;

  @override
  void initState() {
    _routeManager = RouteManager();
    _apiRepository = RemoteRepository();
    // _apiRepository.updateVisits();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<RemoteRepository>.value(
          value: _apiRepository,
        ),
      ],
      child: MaterialApp.router(
        title: 'Corbelli Mattia - Portfolio',
        theme: PortfolioTheme.light,
        darkTheme: PortfolioTheme.dark,
        routeInformationParser: _routeManager.infoParser,
        routerDelegate: _routeManager.routerDelegate,
        routeInformationProvider: _routeManager.infoProvider,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
      ),
    );
  }
}
