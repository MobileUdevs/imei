
import 'imei_platform_interface.dart';

class Imei {
  Future<String?> getPlatformVersion() {
    return ImeiPlatform.instance.getPlatformVersion();
  }
}
