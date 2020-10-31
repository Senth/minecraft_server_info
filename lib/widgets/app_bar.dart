import 'package:flutter/material.dart';
import './menu_button.dart';
import '../config/constants.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: AppColors.appBarBackground,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 0),
            blurRadius: 30,
            color: AppColors.primary,
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
            height: 100,
            image: AssetImage("images/blushine_text_logo.png"),
          ),
          Padding(
            padding: EdgeInsets.only(left: 40),
          ),
          MenuButton(Routes.home),
          MenuButton(Routes.map),
        ],
      ),
    );
  }
}
