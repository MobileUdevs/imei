import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'imei_platform_interface.dart';

/// An implementation of [ImeiPlatform] that uses method channels.
class MethodChannelImei extends ImeiPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('imei');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
