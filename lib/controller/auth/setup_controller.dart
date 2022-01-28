import 'dart:convert';

import 'package:cookup/utils/apidata.dart';
import 'package:cookup/views/sign_up_code.dart';
import 'package:cookup/widget/common_snackbar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class SetupController extends GetxController {
  bool isLoading = true;

  TextEditingController first = TextEditingController();
  TextEditingController last = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController dob = TextEditingController();
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();

  @override
  void onInit() {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    super.onInit();
  }

  @override
  void onReady() {
    isLoading = false;
    update();
    super.onReady();
  }

  Future<void> signup() async {
    isLoading = true;
    update();
    try {
      var res = await http.post(Uri.parse(ApiData.baseUrl + ApiData.register),
          headers: {
            'Content-type': 'application/json',
            "Accept": "application/json",
          },
          body: json.encode({
            'name': '${first.text} ${last.text}',
            'username': username.text,
            'email': email.text,
            'phone': phone.text,
            'password': password.text,
            'password_confirmation': confirmpassword.text,
            'dob': dob.text,
          }));
      isLoading = false;
      update();
      var data = json.decode(res.body);
      if (kDebugMode) {
        print(data);
      }
      Get.to(() =>const CodeScreen() , arguments: email.text);
      CommonSnackbar.getSnackbar(
          'Success', 'User Created Please verify your mail', Colors.green);
    } catch (e) {
      isLoading = false;
      update();
      CommonSnackbar.getSnackbar('Error', e.toString(), Colors.red);
    }
  }
}
