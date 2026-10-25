import 'package:flutter/material.dart';
import 'package:new_face_book/style/app_color.dart';

class ElevatedButtonWidget extends StatelessWidget {
  String data;
  Color elevatedBackgroundColor;
  Color elevatedTextColor;

  BorderSide elevatedSide;

  VoidCallback? elevatedOnPressed;

  ElevatedButtonWidget({
    required this.data,
    this.elevatedBackgroundColor = AppColor.blueAppColor,
    this.elevatedTextColor = AppColor.whiteAppColor,
    this.elevatedSide = BorderSide.none,
    this.elevatedOnPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: elevatedOnPressed,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: elevatedSide,
        ),
        backgroundColor: elevatedBackgroundColor,
        padding: EdgeInsets.symmetric(vertical: 10),
      ),
      child: Text(
        data,
        style: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 16,
          color: elevatedTextColor,
        ),
      ),
    );
  }
}
