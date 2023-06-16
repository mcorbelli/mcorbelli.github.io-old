import 'package:universal_html/html.dart' as html;

class StorageRepository {
  late final AbstractStorage session = _SessionStorage();
  late final AbstractStorage local = _LocalStorage();
}

abstract class AbstractStorage {
  Future<void> insert(String key, String value);
  String? read(String key);
  Future<void> remove(String key);
}

class _SessionStorage extends AbstractStorage {
  @override
  Future<void> insert(String key, String value) async {
    html.window.sessionStorage[key] = value;
  }

  @override
  String? read(String key) {
    return html.window.sessionStorage[key];
  }

  @override
  Future<void> remove(String key) async {
    html.window.sessionStorage.remove(key);
  }
}

class _LocalStorage extends AbstractStorage {
  @override
  Future<void> insert(String key, String value) async {
    html.window.localStorage[key] = value;
  }

  @override
  String? read(String key) {
    return html.window.localStorage[key];
  }

  @override
  Future<void> remove(String key) async {
    html.window.localStorage.remove(key);
  }
}
