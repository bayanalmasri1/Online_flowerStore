import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

Future<void> login(BuildContext context, TextEditingController email, TextEditingController password) async {
  if (email.text.trim().isNotEmpty && password.text.trim().isNotEmpty) {
    try {
      var url = Uri.parse('https://abdulrahman-bashir.trainees-mad-s.com/api/v1/auth/login');
      var response = await http.post(url, body: {
        "identifier": email.text.trim(),
        "password": password.text.trim(),
      });

      // Check for successful response
      if (response.statusCode == 200) {
        Map<String, dynamic> jsonData = jsonDecode(response.body);

        if (jsonData['success'] == true) {
          ScaffoldMessenger.of(context)
              .showSnackBar(const SnackBar(content: Text('Login successful')));
          Get.toNamed("/homepage");
        } else {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(jsonData['message'] ?? 'Login failed')));
        }
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('Error: ${response.statusCode}')));
      }
    } catch (e) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Error: $e')));
    }
  } else {
    ScaffoldMessenger.of(context)
        .showSnackBar(const SnackBar(content: Text('Please enter email and password')));
  }
}
