// ignore_for_file: constant_identifier_names

import 'dart:io';

import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

abstract class ILocalStorage {
  Future<void> init();
}

class LocalStorage extends ILocalStorage {
  static final LocalStorage _singleton = LocalStorage._internal();
  factory LocalStorage() {
    return _singleton;
  }
  LocalStorage._internal();

  static const String ACCESS_TOKEN = "ACCESS_TOKEN";

  late Box _box;

  @override
  Future<void> init() async {
    if (Platform.isAndroid || Platform.isIOS) {
      Hive.init((await getApplicationDocumentsDirectory()).path);
    }
    _box = await Hive.openBox("box");
  }
}
