import 'package:bmi/theme/CustomTheme.dart';
import 'package:bmi/theme/colors.dart';
import 'package:bmi/widgets/customAppBar.dart';
import 'package:bmi/widgets/customButton.dart';
import 'package:bmi/widgets/customInput.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class VerifyCode extends StatefulWidget {
  @override
  _VerifyCodeState createState() => _VerifyCodeState();
}

class _VerifyCodeState extends State<VerifyCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: CustomAppBar(
          title: 'کد تایید',
          icon: Iconsax.tick_circle,
        ),
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
                      child: RichText(
                          textAlign: TextAlign.right,
                          text: TextSpan(
                              text: 'لطفا کد تایید ارسال شده به شماره ',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: CustomColors.carbon,
                                  fontFamily: 'IRsans'),
                              children: [
                                TextSpan(
                                    text: '۰۹۱۳۱۲۳۴۵۶۷ ',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                TextSpan(text: 'را وارد نمایید')
                              ])),
                    ),
                    CustomInput(
                      hint: 'ـــ   ـــ   ـــ   ـــ',
                      keyboardType: TextInputType.phone,
                      maxLength: 4,
                      maxLine: 1,
                      margin: EdgeInsets.only(top: 10),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: CustomButton(
                            disable: true,
                            margin: EdgeInsets.only(top: 10, left: 5),
                            text: '۰۲' + ':' + '۰۰',
                            onPressed: () {},
                          ),
                        ),
                        Expanded(
                          child: CustomButton(
                            margin: EdgeInsets.only(top: 10, right: 5),
                            text: 'تایید',
                            onPressed: () {},
                          ),
                        )
                      ],
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
