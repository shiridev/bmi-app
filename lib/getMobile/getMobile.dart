import 'package:bmi/theme/CustomTheme.dart';
import 'package:bmi/theme/colors.dart';
import 'package:bmi/widgets/customAppBar.dart';
import 'package:bmi/widgets/customButton.dart';
import 'package:bmi/widgets/customInput.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class GetMobile extends StatefulWidget {
  @override
  _GetMobileState createState() => _GetMobileState();
}

class _GetMobileState extends State<GetMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: CustomAppBar(
          title: 'کد تایید',
          icon: Iconsax.tick_circle,
        ),
        preferredSize: Size.fromHeight(100),
      ),
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.only(
          left: 15,
          right: 15,
          bottom: 15,
        ),
        child: Column(
          children: [
            Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                        color: CustomColors.lightGray,
                        style: BorderStyle.solid,
                        width: 1),
                    boxShadow: [CustomTheme.customShadow]),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: CustomColors.lightGray,
                          borderRadius: BorderRadius.circular(15)),
                      padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                      child: Text(
                        'جهت ورود و یا ثبت نام در سامانه لطفا شماره همراه خود را وارد نمایید',
                        textAlign: TextAlign.justify,
                        style:
                            TextStyle(fontSize: 15, color: CustomColors.carbon),
                      ),
                    ),
                    CustomInput(
                      hint: '09',
                      keyboardType: TextInputType.phone,
                      maxLength: 11,
                      maxLine: 1,
                      margin: EdgeInsets.only(top: 10),
                    ),
                    CustomButton(
                      margin: EdgeInsets.only(top: 10),
                      text: 'تایید',
                      onPressed: () {},
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
