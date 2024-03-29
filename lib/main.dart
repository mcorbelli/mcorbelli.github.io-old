import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:url_strategy/url_strategy.dart' as strategy;

import 'package:portfolio_web/core/localizations/translations.g.dart';
import 'package:portfolio_web/core/styles/portfolio.theme.dart';
import 'package:portfolio_web/core/data/repositories/remote.repository.dart';
import 'package:portfolio_web/core/data/repositories/storage.repository.dart';
import 'package:portfolio_web/core/data/repositories/info.repository.dart';
import 'package:portfolio_web/core/presentation/bloc/theme_bloc/theme_bloc.dart';
import 'package:portfolio_web/core/presentation/bloc/analytics_bloc/analytics_bloc.dart';
import 'package:portfolio_web/core/data/observers/bloc.observer.dart';
import 'package:portfolio_web/core/utils/routes.manager.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  strategy.setPathUrlStrategy();

  FlutterError.onError = (details) {
    FlutterError.dumpErrorToConsole(details);
  };

  Bloc.observer = AppBlocObserver();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: HydratedStorage.webStorageDirectory,
  );

  runApp(TranslationProvider(
    child: const PortfolioBlocWrapper(),
  ));
}

class PortfolioBlocWrapper extends StatelessWidget {
  const PortfolioBlocWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<InfoRepository>(
          create: (_) => InfoRepository(),
        ),
        RepositoryProvider<RemoteRepository>(
          create: (context) => RemoteRepository(
            RepositoryProvider.of<InfoRepository>(context),
          ),
        ),
        RepositoryProvider<StorageRepository>(
          create: (_) => StorageRepository(),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider<ThemeBloc>(
            create: (context) => ThemeBloc(
              RepositoryProvider.of<StorageRepository>(context),
            ),
          ),
          BlocProvider<AnalyticsBloc>(
            create: (context) => AnalyticsBloc(
              RepositoryProvider.of<RemoteRepository>(context),
            ),
          ),
        ],
        child: const _PortfolioRouter(),
      ),
    );
  }
}

class _PortfolioRouter extends StatefulWidget {
  const _PortfolioRouter();

  @override
  State<_PortfolioRouter> createState() => _PortfolioRouterState();
}

class _PortfolioRouterState extends State<_PortfolioRouter> {
  late RouteManager _routeManager;

  @override
  void initState() {
    super.initState();
    _routeManager = RouteManager();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        return MaterialApp.router(
          onGenerateTitle: (_) {
            return Translations.of(context).portfolio.title;
          },
          theme: PortfolioTheme.lightTheme,
          darkTheme: PortfolioTheme.darkTheme,
          themeMode: state.themeMode,
          routeInformationParser: _routeManager.infoParser,
          routerDelegate: _routeManager.routerDelegate,
          routeInformationProvider: _routeManager.infoProvider,
          supportedLocales: AppLocaleUtils.supportedLocales,
          locale: TranslationProvider.of(context).flutterLocale,
          localizationsDelegates: GlobalMaterialLocalizations.delegates,
        );
      },
    );
  }
}
