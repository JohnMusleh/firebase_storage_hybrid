part of firebase_storage_hybrid;

class FirebaseStorage {
  Future<String> getDownloadUrl(String refPath) async {
    return await FirebaseStoragePlatformInterface.instance
        .getDownloadUrl(refPath);
  }

  Future<int> get maxOperationRetryTime async =>
      await FirebaseStoragePlatformInterface.instance.maxOperationRetryTime;

  Future<int> get maxUploadRetryTime async =>
      await FirebaseStoragePlatformInterface.instance.maxUploadRetryTime;

  Future<void> setMaxOperationRetryTime(int time) async {
    await FirebaseStoragePlatformInterface.instance
        .setMaxOperationRetryTime(time);
  }

  Future<void> setMaxUploadRetryTime(int time) async {
    await FirebaseStoragePlatformInterface.instance.setMaxUploadRetryTime(time);
  }
}
