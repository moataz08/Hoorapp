import 'package:flutter/material.dart';
import 'package:testhoor/core/const/constant.dart';
import 'package:testhoor/core/utils/size_config.dart';

class CustomGeneraLButton extends StatelessWidget {
  const CustomGeneraLButton({Key? key, this.text,}) : super(key: key);
final String? text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: SizeConfig.screenwidth,
      decoration: BoxDecoration(
        color: mainColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
          child: Text(
        text!,
        style: const TextStyle(
          fontSize: 14,
          color: Color(0xffffffff),
          fontWeight: FontWeight.w500,
        ),
        textAlign: TextAlign.left,
      )),
    );
  }
}
