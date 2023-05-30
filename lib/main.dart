import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:url_strategy/url_strategy.dart' as strategy;

import 'package:portfolio_web/core/styles/portfolio.theme.dart';
import 'package:portfolio_web/core/utils/observer.bloc.dart';
import 'package:portfolio_web/core/data/repositories/remote.repository.dart';
import 'package:portfolio_web/core/presentation/bloc/theme_bloc/theme_bloc.dart';
import 'package:portfolio_web/core/utils/manager.route.dart';
import 'package:portfolio_web/core/data/locales.enum.dart';

Future<void> main() async {
  FlutterError.onError = (details) {
    FlutterError.dumpErrorToConsole(details);
  };

  await EasyLocalization.ensureInitialized();

  strategy.setPathUrlStrategy();

  Bloc.observer = AppBlocObserver();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: HydratedStorage.webStorageDirectory,
  );

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

  @override
  void initState() {
    _routeManager = RouteManager();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<RemoteRepository>(
          create: (_) => RemoteRepository(),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider<ThemeBloc>(
            create: (_) => ThemeBloc(),
          )
        ],
        child: BlocBuilder<ThemeBloc, ThemeState>(
          builder: (context, state) {
            return MaterialApp.router(
              onGenerateTitle: (_) {
                return tr('portfolio.title');
              },
              theme: PortfolioTheme.lightTheme,
              darkTheme: PortfolioTheme.darkTheme,
              themeMode: state.themeMode,
              routeInformationParser: _routeManager.infoParser,
              routerDelegate: _routeManager.routerDelegate,
              routeInformationProvider: _routeManager.infoProvider,
              localizationsDelegates: context.localizationDelegates,
              supportedLocales: context.supportedLocales,
              locale: context.locale,
            );
          },
        ),
      ),
    );
  }
}
