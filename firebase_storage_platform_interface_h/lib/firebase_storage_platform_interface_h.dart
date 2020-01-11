library firebase_storage_platform_interface;

import 'dart:async';
import 'package:firebase_storage/firebase_storage.dart';

part 'src/firebase_storage_mobile.dart';

abstract class FirebaseStoragePlatformInterface {
  static FirebaseStoragePlatformInterface instance = FirebaseStorageMobile();

  Future<String> getDownloadUrl(String refPath);

  Future<int> get maxOperationRetryTime;

  Future<int> get maxUploadRetryTime;

  Future<void> setMaxOperationRetryTime(int time);

  Future<void> setMaxUploadRetryTime(int time);
}
