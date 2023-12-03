import '../models/laptops_item_model.dart';
import 'package:ecommerce/core/app_export.dart';
import 'package:ecommerce/widgets/custom_checkbox_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LaptopsItemWidget extends StatelessWidget {
  LaptopsItemWidget(
    this.laptopsItemModelObj, {
    super.key,
    this.changeCheckBox,
  });

  LaptopsItemModel laptopsItemModelObj;

  Function(bool)? changeCheckBox;

  @override
  Widget build(BuildContext context) {
    return CustomCheckboxButton(
      width: 322.h,
      text: "lbl_laptops".tr,
      value: laptopsItemModelObj.laptops!,
      isRightCheck: true,
      onChange: (value) {
        changeCheckBox?.call(value);
      },
    );
  }
}
