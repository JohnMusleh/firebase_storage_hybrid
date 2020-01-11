library firebase_storage_web_h;

import 'dart:async';
import 'package:firebase/firebase.dart' as fb;
import 'package:firebase_storage_platform_interface_h/firebase_storage_platform_interface_h.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

class FirebaseStorageWeb extends FirebaseStoragePlatformInterface {
  static void registerWith(Registrar registrar) {
    FirebaseStoragePlatformInterface.instance = FirebaseStorageWeb();
  }

  final fb.Storage _storage;

  FirebaseStorageWeb() : _storage = fb.storage();

  @override
  Future<String> getDownloadUrl(String refPath) async {
    var uri = await _storage?.ref(refPath)?.getDownloadURL();
    return uri?.toString();
  }

  @override
  Future<int> get maxUploadRetryTime async => _storage.maxUploadRetryTime;

  @override
  Future<int> get maxOperationRetryTime async => _storage.maxOperationRetryTime;

  @override
  Future<void> setMaxUploadRetryTime(int time) async {
    _storage?.setMaxUploadRetryTime(time);
  }

  @override
  Future<void> setMaxOperationRetryTime(int time) async {
    _storage?.setMaxOperationRetryTime(time);
  }
}
