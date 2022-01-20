import 'dart:convert';

import 'package:cookup/utils/apidata.dart';
import 'package:cookup/widget/common_snackbar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class LoginController extends GetxController{

  bool isLoading = true;

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();


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


  Future<void> login() async{
    isLoading = true;
    update();
    try{
      var res = await http.post(Uri.parse(ApiData.baseUrl + ApiData.login), body: {
        'email' : email.text,
        'password' : password.text,
      });
      isLoading = false;
      update();
      var data = json.decode(res.body);
      if (kDebugMode) {
        print('Result is $data');
      }
    }catch(e){
      isLoading = false;
      update();
      CommonSnackbar.getSnackbar('Error', e.toString(), Colors.red);
    }
  }

}