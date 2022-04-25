import 'package:bmi/theme/colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final String text;
  final onPressed;
  final EdgeInsets margin;
  final bool disable;

  CustomButton(
      {this.text = '',
      this.onPressed,
      this.margin = EdgeInsets.zero,
      this.disable = false});

  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: widget.margin,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: widget.disable == true ? CustomColors.lightGray : null,
          gradient: widget.disable == false
              ? LinearGradient(
                  colors: [CustomColors.green, CustomColors.lightGreen],
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft)
              : null),
      child: TextButton(
          onPressed: widget.disable == true ? null : widget.onPressed,
          style: ButtonStyle(
              padding: MaterialStateProperty.all(EdgeInsets.all(0)),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)))),
          child: Container(
            height: 56,
            alignment: Alignment.center,
            child: Text(
              widget.text,
              style: TextStyle(
                  color: widget.disable == false
                      ? Colors.white
                      : CustomColors.carbon,
                  fontSize: 18),
            ),
          )),
    );
  }
}
