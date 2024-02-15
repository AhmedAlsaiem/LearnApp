import 'package:flutter/material.dart';
import 'package:i_learn/core/utils/constants.dart';
import 'package:i_learn/core/utils/styles.dart';

// ignore: must_be_immutable
class CustomListTile extends StatelessWidget {
  CustomListTile({
    super.key,
    required this.loadingIcon,
    required this.title,
    this.tralingstate,
    this.ontap,
  });
  final IconData? loadingIcon;
  final String title;
  final void Function()? ontap;
  bool? tralingstate = true;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: ontap,
      contentPadding: const EdgeInsets.symmetric(vertical: 2, horizontal: 14),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      tileColor: const Color(0xfff5f6f9),
      trailing: tralingstate != false
          ? Icon(
              Icons.arrow_forward_ios,
              color: ColorsManger.kScendryColor.withOpacity(0.6),
            )
          : null,
      selectedColor: Colors.red,
      leading: Icon(
        loadingIcon,
        color: ColorsManger.kScendryColor.withOpacity(0.6),
        size: 30,
      ),
      titleTextStyle: TextStyle(color: ColorsManger.kScendryColor),
      title: Text(
        title,
        style: TextStyleManger.textStyleAleoRegular16.copyWith(
          color: ColorsManger.kScendryColor.withOpacity(0.6),
        ),
      ),
    );
  }
}
