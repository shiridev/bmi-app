import 'package:bmi/theme/colors.dart';
import 'package:flutter/material.dart';

class CustomRadio extends StatefulWidget {
  final title;
  final String value;
  final groupValue;
  final EdgeInsets margin;
  final onTap;
  final onChange;

  const CustomRadio({Key? key, this.title, this.value = '', this.groupValue, this.margin = EdgeInsets.zero, this.onTap, this.onChange})
      : super(key: key);

  @override
  _CustomRadioState createState() => _CustomRadioState();
}

class _CustomRadioState extends State<CustomRadio> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
          margin: widget.margin,
          height: 56,
          padding: EdgeInsets.only(left: 15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                  color: CustomColors.lightGray,
                  width: 1,
                  style: BorderStyle.solid)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Radio(
                  value: widget.value,
                  groupValue: widget.groupValue,
                  onChanged: widget.onChange),
              Text(
                widget.title,
                style: TextStyle(fontSize: 18),
              ),
            ],
          )),
    );
  }
}
