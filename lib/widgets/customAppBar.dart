import 'package:bmi/theme/CustomTheme.dart';
import 'package:bmi/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CustomAppBar extends StatefulWidget {
  final title;
  final icon;

  const CustomAppBar({@required this.title, @required this.icon});

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top + 15, right: 15, left: 15, bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                    color: CustomColors.lightGray,
                    style: BorderStyle.solid,
                    width: 1),
                borderRadius: BorderRadius.circular(15),
                boxShadow: [CustomTheme.customShadow]),
            child: Icon(
              widget.icon,
              color: CustomColors.carbon,
              size: 28,
            ),
          ),
          Text(
            this.widget.title,
            style: TextStyle(
                color: CustomColors.carbon,
                fontWeight: FontWeight.bold,
                fontSize: 18),
          ),
          Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                    color: CustomColors.lightGray,
                    style: BorderStyle.solid,
                    width: 1),
                borderRadius: BorderRadius.circular(15),
                boxShadow: [CustomTheme.customShadow]),
            child: TextButton(
              onPressed: () => Navigator.pop(context),
              style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.all(0)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)))),
              child: Icon(
                Iconsax.arrow_left_2,
                color: CustomColors.carbon,
                size: 28,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
