import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:auth/widgets/custom_button.dart';
import 'package:auth/widgets/custom_textfield.dart';
import 'package:auth/modules/auth/controllers/register_controller.dart';

class RegisterView extends StatelessWidget {
  final RegisterController controller = Get.put(RegisterController());
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

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
                'Register',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 16),
              CustomTextField(label: 'Name', controller: nameController),
              SizedBox(height: 16),
              CustomTextField(label: 'Email', controller: emailController),
              SizedBox(height: 16),
              CustomTextField(
                label: 'Password',
                controller: passwordController,
                obscureText: true,
              ),
              SizedBox(height: 16),
              CustomTextField(
                label: 'Confirm Password',
                controller: confirmPasswordController,
                obscureText: true,
              ),
              SizedBox(height: 24),
              Obx(() {
                if (controller.isLoading.value) {
                  return CircularProgressIndicator();
                }
                return CustomButton(
                  label: 'Register',
                  onPressed: () {
                    controller.register(
                      nameController.text,
                      emailController.text,
                      passwordController.text,
                      confirmPasswordController.text,
                    );
                  },
                );
              }),
              TextButton(
                onPressed: () => Get.offAndToNamed('/login'),
                child: Text("Have an account? Login"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
