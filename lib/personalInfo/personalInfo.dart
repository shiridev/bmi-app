import 'package:bmi/theme/CustomTheme.dart';
import 'package:bmi/theme/colors.dart';
import 'package:bmi/widgets/customAppBar.dart';
import 'package:bmi/widgets/customButton.dart';
import 'package:bmi/widgets/customInput.dart';
import 'package:bmi/widgets/customRadio.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class PersonalInfo extends StatefulWidget {
  @override
  _PersonalInfoState createState() => _PersonalInfoState();
}

class _PersonalInfoState extends State<PersonalInfo> {
  var genders = ['آقا', 'خانم'];
  var selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: CustomAppBar(
          title: 'اطلاعات تکمیلی',
          icon: Iconsax.mobile,
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(right: 15, left: 15, bottom: 15),
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
                          'برای شناخت شما و انجام محاسبات به اطلاعات تکمیلی مانند سن ، جنسیت ، قد و وزن شما نیاز داریم',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              fontSize: 15, color: CustomColors.carbon),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 15, bottom: 10),
                        child: Row(children: [
                          Text(
                            'مشخصات فردی',
                            style: TextStyle(
                                color: CustomColors.carbon,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          Expanded(
                              child: Container(
                            margin: EdgeInsets.only(right: 10),
                            child: DottedLine(
                              direction: Axis.horizontal,
                              lineThickness: 1,
                              dashLength: 5,
                              dashGapLength: 5,
                              dashColor: CustomColors.gray,
                            ),
                          ))
                        ]),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: CustomInput(
                              textAlign: TextAlign.right,
                              hint: 'نام',
                              keyboardType: TextInputType.name,
                              maxLine: 1,
                              margin: EdgeInsets.only(top: 10, left: 5),
                            ),
                          ),
                          Expanded(
                            child: CustomInput(
                              textAlign: TextAlign.right,
                              hint: 'نام خانوادگی',
                              keyboardType: TextInputType.name,
                              maxLine: 1,
                              margin: EdgeInsets.only(top: 10, right: 5),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: CustomInput(
                              textAlign: TextAlign.center,
                              hint: 'روز',
                              keyboardType: TextInputType.numberWithOptions(
                                  signed: false, decimal: true),
                              maxLine: 1,
                              maxLength: 2,
                              margin: EdgeInsets.only(top: 10, left: 5),
                            ),
                          ),
                          Expanded(
                            child: CustomInput(
                              textAlign: TextAlign.center,
                              hint: 'ماه',
                              keyboardType: TextInputType.numberWithOptions(
                                  signed: false, decimal: true),
                              maxLine: 1,
                              maxLength: 2,
                              margin:
                                  EdgeInsets.only(top: 10, left: 5, right: 5),
                            ),
                          ),
                          Expanded(
                            child: CustomInput(
                              textAlign: TextAlign.center,
                              hint: 'سال',
                              keyboardType: TextInputType.numberWithOptions(
                                  signed: false, decimal: true),
                              maxLine: 1,
                              maxLength: 2,
                              margin: EdgeInsets.only(top: 10, right: 5),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: CustomRadio(
                            title: 'آقا',
                            value: genders[0],
                            groupValue: selectedGender,
                            margin: EdgeInsets.only(top: 10, left: 5),
                            onTap: () {
                              setState(() {
                                selectedGender = genders[0];
                              });
                            },
                            onChange: (v) {
                              setState(() {
                                selectedGender = v;
                              });
                            },
                          )),
                          Expanded(
                              child: CustomRadio(
                            title: 'خانم',
                            value: genders[1],
                            groupValue: selectedGender,
                            margin: EdgeInsets.only(top: 10, right: 5),
                            onTap: () {
                              setState(() {
                                selectedGender = genders[1];
                              });
                            },
                            onChange: (v) {
                              setState(() {
                                selectedGender = v;
                              });
                            },
                          )),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 15, bottom: 10),
                        child: Row(children: [
                          Text(
                            'شاخص های بدنی',
                            style: TextStyle(
                                color: CustomColors.carbon,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          Expanded(
                              child: Container(
                            margin: EdgeInsets.only(right: 10),
                            child: DottedLine(
                              direction: Axis.horizontal,
                              lineThickness: 1,
                              dashLength: 5,
                              dashGapLength: 5,
                              dashColor: CustomColors.gray,
                            ),
                          ))
                        ]),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Row(children: [
                          Expanded(
                              child: CustomInput(
                            margin: EdgeInsets.only(left: 5),
                            customIcon: Text(
                              'KG',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                            hint: 'وزن',
                            textAlign: TextAlign.right,
                            keyboardType:
                                TextInputType.numberWithOptions(signed: false),
                            maxLine: 1,
                            maxLength: 3,
                          )),
                          Expanded(
                              child: CustomInput(
                            margin: EdgeInsets.only(right: 5),
                            customIcon: Text(
                              'CM',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                            hint: 'قد',
                            textAlign: TextAlign.right,
                            keyboardType:
                                TextInputType.numberWithOptions(signed: false),
                            maxLine: 1,
                            maxLength: 3,
                          ))
                        ]),
                      ),
                      CustomButton(
                        margin: EdgeInsets.only(top: 10),
                        text: 'تایید',
                        onPressed: () {},
                      )
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
