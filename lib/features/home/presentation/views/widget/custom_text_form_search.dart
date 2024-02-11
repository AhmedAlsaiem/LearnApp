import 'package:flutter/material.dart';
import 'package:i_learn/core/utils/constants.dart';

class CustomSearchTextFormField extends StatelessWidget {
  const CustomSearchTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 57,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(14)),
        color: ColorsManger.kWhiteColor.withOpacity(0.93),
      ),
      child: Center(
        child: TextField(
          cursorOpacityAnimates: true,
          cursorColor: ColorsManger.kPrimaryColor,
          cursorHeight: 22,
          style: TextStyle(
            fontSize: 18,
          ),
          decoration: InputDecoration(
            hintText: 'Search',
            hintStyle:
                TextStyle(color: ColorsManger.kScendryColor.withOpacity(0.5)),
            suffixIcon: Icon(Icons.search),
            suffixIconColor: ColorsManger.kScendryColor.withOpacity(0.5),
            border: CustomOutlineInputBorder(),
            enabledBorder: CustomOutlineInputBorder(),
            focusedBorder: CustomOutlineInputBorder(),
            focusedErrorBorder: CustomOutlineInputBorder(),
            disabledBorder: CustomOutlineInputBorder(),
          ),
        ),
      ),
    );
  }
  
OutlineInputBorder CustomOutlineInputBorder() {
  return OutlineInputBorder(
      borderSide: BorderSide(color: ColorsManger.kPrimaryColor));
}
}
