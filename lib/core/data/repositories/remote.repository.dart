import 'package:flutter/foundation.dart';

import 'package:portfolio_web/core/constants/url.const.dart';
import 'package:portfolio_web/core/data/repositories/info.repository.dart';
import 'package:portfolio_web/core/data/services/http_api.service.dart';

class RemoteRepository extends HttpApiService {
  late final InfoRepository _infoRepo;

  RemoteRepository(this._infoRepo);

  Future<void> updateVisits() async {
    try {
      final browserInfo = await _infoRepo.getBrowserInfo();
      final packageInfo = await _infoRepo.getPackageInfo();

      await post(
        UrlConst.updateVisits,
        body: {
          'browser': browserInfo.data,
          'package': packageInfo.data,
        },
      );
    } catch (error) {
      debugPrint('Errore durante la chiamata: $error');
    }
  }
}
