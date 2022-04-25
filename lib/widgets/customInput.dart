import 'package:bmi/theme/colors.dart';
import 'package:flutter/material.dart';

class CustomInput extends StatefulWidget {
  final String hint;
  final TextInputType keyboardType;
  final maxLength;
  final maxLine;
  final onChange;
  final EdgeInsets margin;
  final TextAlign textAlign;
  final customIcon;

  CustomInput(
      {this.hint = '',
      this.keyboardType = TextInputType.text,
      this.maxLength,
      this.maxLine,
      this.onChange,
      this.margin = EdgeInsets.zero,
      this.textAlign = TextAlign.center,
      this.customIcon});

  @override
  _CustomInputState createState() => _CustomInputState();
}

class _CustomInputState extends State<CustomInput> {
  @override
  Widget build(BuildContext context) {
    if (widget.customIcon != null) {
      return Container(
        margin: widget.margin,
        child: TextField(
          textAlign: widget.textAlign,
          onChanged: widget.onChange,
          style: TextStyle(fontSize: 18, height: 1.0),
          decoration: InputDecoration(
              isDense: false,
              suffixIcon: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: CustomColors.gray,
                    borderRadius: BorderRadius.circular(10)),
                child: widget.customIcon,
              ),
              hintText: widget.hint,
              counterText: '',
              hintStyle: TextStyle(color: CustomColors.gray),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: CustomColors.lightGray,
                      style: BorderStyle.solid,
                      width: 1),
                  borderRadius: BorderRadius.circular(15)),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              )),
          keyboardType: widget.keyboardType,
          maxLength: widget.maxLength,
          maxLines: widget.maxLine,
        ),
      );
    } else {
      return Container(
        margin: widget.margin,
        child: TextField(
          textAlign: widget.textAlign,
          onChanged: widget.onChange,
          style: TextStyle(fontSize: 18, height: 1.0),
          decoration: InputDecoration(
              hintText: widget.hint,
              counterText: '',
              hintStyle: TextStyle(color: CustomColors.gray),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: CustomColors.lightGray,
                      style: BorderStyle.solid,
                      width: 1),
                  borderRadius: BorderRadius.circular(15)),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              )),
          keyboardType: widget.keyboardType,
          maxLength: widget.maxLength,
          maxLines: widget.maxLine,
        ),
      );
    }
  }
}
