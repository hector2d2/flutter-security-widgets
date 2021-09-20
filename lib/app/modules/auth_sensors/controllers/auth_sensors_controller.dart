import 'package:get/get.dart';
import 'package:local_auth/local_auth.dart';

class AuthSensorsController extends GetxController {
  final localAuth = LocalAuthentication();

  @override
  void onInit() {
    checkAuth();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  Future<void> checkAuth() async {
    bool canCheckBiometrics = await localAuth.canCheckBiometrics;

    List<BiometricType> availableBiometrics =
        await localAuth.getAvailableBiometrics();

    if (availableBiometrics.contains(BiometricType.face)) {
      // Face ID.
    } else if (availableBiometrics.contains(BiometricType.fingerprint)) {}

    bool didAuthenticate = await localAuth.authenticate(
      localizedReason: 'Please authenticate to show account balance',
    );

    print(didAuthenticate);
  }
}
