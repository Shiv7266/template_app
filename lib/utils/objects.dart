import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:template_app/app/app.locator.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'size_config.dart';

NavigationService navigationService = locator<NavigationService>();

class ShowToast {
  void toast(String msg, Color color) {
    Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 2,
        backgroundColor: color,
        textColor: Colors.white,
        fontSize: SizeConfig.screenWidth! * 0.040);
  }
}
