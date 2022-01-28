import 'dart:convert';

import 'package:cookup/utils/apidata.dart';
import 'package:cookup/widget/common_snackbar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ForgotpasswordController extends GetxController{

  bool isLoading = true;

  TextEditingController email = TextEditingController();
  TextEditingController opt = TextEditingController();
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


  Future<void> forgotfunction() async{
    isLoading = true;
    update();
    try{
      var res = await http.post(Uri.parse(ApiData.baseUrl + ApiData.forgotpassword), body: {
        'email' : email.text,
      });
      isLoading = false;
      update();
      var data = json.decode(res.body);
      if(data['message'].toString() == 'OTP sent to your email')
      {
        isLoading = false;
        update();
        CommonSnackbar.getSnackbar('Success', data['message'].toString() , Colors.green);
      }
      else
      {
        CommonSnackbar.getSnackbar('Error', data['message'].toString() , Colors.red);
      }
    }catch(e){
      isLoading = false;
      update();
      CommonSnackbar.getSnackbar('Error', e.toString(), Colors.red);
    }
  }


  Future<void> recoverfunction() async{
    isLoading = true;
    update();
    try{
      var res = await http.post(Uri.parse(ApiData.baseUrl + ApiData.recoverpassword), body: {
        'email' : email.text,
        'otp' : opt.text,
        'password' : password.text
      });
      isLoading = false;
      update();
      var data = json.decode(res.body);
      if(data['message'].toString() == 'Password Recover')
        {
          Get.back();
          CommonSnackbar.getSnackbar('Success', data['message'].toString() , Colors.green);
        }
      else
        {
          CommonSnackbar.getSnackbar('Error', data['message'].toString() , Colors.red);
        }
    }catch(e){
      isLoading = false;
      update();
      CommonSnackbar.getSnackbar('Error', e.toString(), Colors.red);
    }
  }

}