import 'package:get/get.dart';
import 'package:auth/core/services/api_service.dart';

class LoginController extends GetxController {
  var isLoading = false.obs;

  Future<void> login(String email, String password) async {
    isLoading(true);
    try {
      var response = await ApiService.post('/auth/login', {
        'email': email,
        'password': password,
      });
      String token = response.data['access_token'];
      Get.offAllNamed('/home', arguments: token);
    } catch (e) {
      Get.snackbar('Error', 'Invalid credentials');
    } finally {
      isLoading(false);
    }
  }
}
