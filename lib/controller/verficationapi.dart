//import 'dart:convert';
import 'package:flutter/material.dart';
//import 'package:get/get.dart';
import 'package:http/http.dart' as http;


Future<void> Verfication (BuildContext context) async{
  var request = http.MultipartRequest('POST', Uri.parse('https://abdulrahman-bashir.trainees-mad-s.com/api/v1/auth/verify-code'));
request.fields.addAll({
  'email': 'abd.alrhman.d@gmail.com',
  'verification_code': 'e7jW5p'
});


http.StreamedResponse response = await request.send();

if (response.statusCode == 200) {
  print(await response.stream.bytesToString());
}
else {
  print(response.reasonPhrase);
}

}