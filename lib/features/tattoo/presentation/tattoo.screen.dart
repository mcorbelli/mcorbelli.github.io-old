import 'package:universal_html/html.dart' as html;
import 'package:flutter/material.dart';
import 'package:go_router_plus/go_router_plus.dart';

import 'package:portfolio_web/core/data/app_routes.enum.dart';

class TattooScreen extends Screen {
  final _route = AppRoutes.tattoo;

  @override
  String get routeName => _route.routeName;

  @override
  String get routePath => _route.routePath;

  @override
  Page<void> build(context, state) {
    return const NoTransitionPage(
      child: _TattooPage(),
    );
  }
}

const _redirectUrl = 'https://youtube.com/watch?v=dQw4w9WgXcQ';

class _TattooPage extends StatefulWidget {
  const _TattooPage();

  @override
  State<_TattooPage> createState() => _TattooPageState();
}

class _TattooPageState extends State<_TattooPage> {
  @override
  void initState() {
    super.initState();
    openInWindow(_redirectUrl);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
    );
  }

  void openInWindow(String uri) {
    Html.open(uri, OpenMode.blank);
  }
}

enum OpenMode {
  blank('_blank'),
  self('_self'),
  parent('_parent'),
  top('_top');

  const OpenMode(this.value);

  final String value;
}

class Html {
  static void open(String uri, OpenMode mode) {
    html.window.open(uri, mode.value);
  }
}
