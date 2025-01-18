import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String token = Get.arguments ?? 'No Token';
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Center(
        child: Text('Token: $token'),
      ),
    );
  }
}
