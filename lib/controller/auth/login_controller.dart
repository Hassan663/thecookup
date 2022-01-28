import 'dart:convert';

import 'package:cookup/utils/apidata.dart';
import 'package:cookup/views/bottom_nav_bar.dart';
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
      var res = await http.post(Uri.parse(ApiData.baseUrl + ApiData.login),
          headers: {
            'Content-type': 'application/json',
            "Accept": "application/json",
            'Device-Type' : 'android'
          },
          body: jsonEncode({
            'email' : email.text,
            'password' : password.text,
            'timezone' : 'Asia/Karachi',
            'fcm_token' : 'adsds',
            'phone' : '03434044387',
          }));
      isLoading = false;
      update();
      var data = json.decode(res.body);
      if(data['message'].toString() == 'User Login Successfully.')
      {
        Get.offAll(() =>const BottomNav());
        CommonSnackbar.getSnackbar('Success', data['message'].toString() , Colors.green);
      }
      else
      {
        isLoading = false;
        update();
        CommonSnackbar.getSnackbar('Error', data['message'].toString() , Colors.red);
      }
    }catch(e){
      isLoading = false;
      update();
      CommonSnackbar.getSnackbar('Error', e.toString(), Colors.red);
    }
  }

}