import 'dart:convert';

import 'package:cookup/utils/apidata.dart';
import 'package:cookup/widget/common_snackbar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class SignupCodeController extends GetxController {
  bool isLoading = true;

  TextEditingController email = TextEditingController();
  TextEditingController code = TextEditingController();

  @override
  void onInit() {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    if(Get.arguments != null)
      {
        email.text = Get.arguments;
        update();
      }
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
      var res = await http.post(Uri.parse(ApiData.baseUrl + ApiData.verifycode),
          headers: {
            'Content-type': 'application/json',
            "Accept": "application/json",
          },
          body: json.encode({
            'email': email.text,
            'verification_code': code.text,
          }));
      isLoading = false;
      update();
      var data = json.decode(res.body);
      if (kDebugMode) {
        print(data);
      }

    } catch (e) {
      isLoading = false;
      update();
      CommonSnackbar.getSnackbar('Error', e.toString(), Colors.red);
    }
  }
}
