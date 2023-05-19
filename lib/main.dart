import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setPathUrlStrategy();
  runApp(const Portfolio());
}

class Portfolio extends StatelessWidget {
  const Portfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Corbelli Mattia - Portfolio",
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0XFF000115),
      ),
      home: const PortfolioPage(),
    );
  }
}

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            right: 10.0,
            bottom: 10.0,
            child: AppVersion(),
          ),
          OwnerInfo(),
        ],
      ),
    );
  }
}

class AppVersion extends StatelessWidget {
  const AppVersion({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<PackageInfo>(
      future: PackageInfo.fromPlatform(),
      builder: (_, snapshot) {
        String versionLabel = 'Loading ...';

        if (snapshot.hasError) {
          versionLabel = 'Something went wrong :(';
        } else if (snapshot.hasData) {
          versionLabel = 'v${snapshot.data!.version}';
        }

        return Text(
          versionLabel,
          style: const TextStyle(
            fontSize: 10.0,
            color: Colors.white,
          ),
        );
      },
    );
  }
}

class OwnerInfo extends StatelessWidget {
  const OwnerInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'PORTFOLIO',
          style: TextStyle(
            fontSize: 48.0,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 16.0,
        ),
        Text(
          'Corbelli Mattia',
          style: TextStyle(
            fontSize: 24.0,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
