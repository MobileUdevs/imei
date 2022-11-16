import 'package:flutter_test/flutter_test.dart';
import 'package:imei/imei.dart';
import 'package:imei/imei_platform_interface.dart';
import 'package:imei/imei_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockImeiPlatform
    with MockPlatformInterfaceMixin
    implements ImeiPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final ImeiPlatform initialPlatform = ImeiPlatform.instance;

  test('$MethodChannelImei is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelImei>());
  });

  test('getPlatformVersion', () async {
    Imei imeiPlugin = Imei();
    MockImeiPlatform fakePlatform = MockImeiPlatform();
    ImeiPlatform.instance = fakePlatform;

    expect(await imeiPlugin.getPlatformVersion(), '42');
  });
}
