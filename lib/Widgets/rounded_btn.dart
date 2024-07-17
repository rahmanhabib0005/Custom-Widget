import 'package:flutter/material.dart';

class RoundedBtn extends StatelessWidget {
  final String btnName;
  final Icon? icon;
  final Color? bgColor;
  final TextStyle? textStyle;
  final VoidCallback? callback;

  RoundedBtn(
      {required this.btnName,
      this.icon,
      this.bgColor = Colors.blue,
      this.textStyle,
      this.callback});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        callback!();
      },
      child: icon != null
          ? Row(
              children: [
                icon!,
                SizedBox(
                  width: 10,
                ),
                Text(
                  btnName,
                  style: textStyle,
                ),
              ],
            )
          : Text(
              btnName,
              style: textStyle,
            ),
      style: ElevatedButton.styleFrom(
        backgroundColor: bgColor,
        shadowColor: bgColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(21), bottomLeft: Radius.circular(21)),
        ),
      ),
    );
  }
}
