part of firebase_storage_platform_interface;

class FirebaseStorageMobile extends FirebaseStoragePlatformInterface {
  final FirebaseStorage _storage;

  FirebaseStorageMobile() : _storage = FirebaseStorage();

  @override
  Future<String> getDownloadUrl(String refPath) async {
    return await _storage?.ref()?.child(refPath)?.getDownloadURL();
  }

  @override
  Future<int> get maxOperationRetryTime async =>
      await _storage?.getMaxOperationRetryTimeMillis();

  @override
  Future<int> get maxUploadRetryTime async =>
      await _storage?.getMaxUploadRetryTimeMillis();

  @override
  Future<void> setMaxOperationRetryTime(int time) async {
    await _storage.setMaxOperationRetryTimeMillis(time);
  }

  @override
  Future<void> setMaxUploadRetryTime(int time) async {
    await _storage.setMaxUploadRetryTimeMillis(time);
  }
}
