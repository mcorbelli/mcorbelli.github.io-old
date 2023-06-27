import 'dart:js_interop';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:package_info_plus/package_info_plus.dart';

class InfoRepository {
  late DeviceInfoPlugin _deviceInfo;
  PackageInfo? _packageInfo;

  InfoRepository() {
    _deviceInfo = DeviceInfoPlugin();
    _initializePackageInfo();
  }

  Future<void> _initializePackageInfo() async {
    _packageInfo = await PackageInfo.fromPlatform();
  }

  Future<WebBrowserInfo> getBrowserInfo() async {
    return (await _deviceInfo.webBrowserInfo);
  }

  Future<PackageInfo> getPackageInfo() async {
    if (_packageInfo.isUndefinedOrNull) {
      await _initializePackageInfo();
    }

    return _packageInfo!;
  }
}
