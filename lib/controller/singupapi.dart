
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


Future<void> register(BuildContext context, File profilePhoto, File certificate) async {
 var headers = {
  'Accept': 'application/json'
};
var request = http.MultipartRequest('POST', Uri.parse('https://abdulrahman-bashir.trainees-mad-s.com/api/v1/auth/register'));
request.fields.addAll({
  'email': 'abd.alrhman.d@gmail.com',
  'password': 'Abo3d@postman.111',
  'user_name': 'arter',
  'phone_number': '0933223081',
  'password_confirmation': 'Abo3d@postman.111'
});
request.files.add(await http.MultipartFile.fromPath('profile_photo', ''));//image
request.files.add(await http.MultipartFile.fromPath('certificate', 'postman-cloud:///1ef141e7-e78b-48f0-a892-fb39b43bcaeb'));
request.headers.addAll(headers);

http.StreamedResponse response = await request.send();

if (response.statusCode == 200) {
   ScaffoldMessenger.of(context)
              .showSnackBar(const SnackBar(content: Text('Registar successful')));
  print(await response.stream.bytesToString());

}
else {
  print(response.reasonPhrase);
}
}