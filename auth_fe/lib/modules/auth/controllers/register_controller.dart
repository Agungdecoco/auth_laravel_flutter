import 'package:get/get.dart';
import 'package:auth/core/services/api_service.dart';

class RegisterController extends GetxController {
  var isLoading = false.obs;

  Future<void> register(String name, String email, String password, String confirmPassword) async {
    isLoading(true);
    try {
      await ApiService.post('/auth/register', {
        'name': name,
        'email': email,
        'password': password,
        'password_confirmation': confirmPassword,
      });
      Get.snackbar('Success', 'Registration successful');
      Get.toNamed('/login');
    } catch (e) {
      Get.snackbar('Error', 'Failed to register');
    } finally {
      isLoading(false);
    }
  }
}
