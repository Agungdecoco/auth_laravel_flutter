import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:auth/widgets/custom_button.dart';
import 'package:auth/widgets/custom_textfield.dart';
import 'package:auth/modules/auth/controllers/login_controller.dart';

class LoginView extends StatelessWidget {
  final LoginController controller = Get.put(LoginController());
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Login',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 16),
              CustomTextField(label: 'Email', controller: emailController),
              SizedBox(height: 16),
              CustomTextField(
                label: 'Password',
                controller: passwordController,
                obscureText: true,
              ),
              SizedBox(height: 24),
              Obx(() {
                if (controller.isLoading.value) {
                  return CircularProgressIndicator();
                }
                return CustomButton(
                  label: 'Login',
                  onPressed: () {
                    controller.login(emailController.text, passwordController.text);
                  },
                );
              }),
              TextButton(
                onPressed: () => Get.toNamed('/register'),
                child: Text("Don't have an account? Register"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
