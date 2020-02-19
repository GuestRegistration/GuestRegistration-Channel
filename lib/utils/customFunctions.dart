import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CustomFuntion{

  showToast({String message}){
     Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.CENTER,
      timeInSecForIos: 1,
      backgroundColor: Colors.black,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }

  loadingWidget(){
    return Center(
      child: CircularProgressIndicator()
    );
  }


}