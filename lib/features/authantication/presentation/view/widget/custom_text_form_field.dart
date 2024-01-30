import 'package:flutter/material.dart';
import 'package:i_learn/core/utils/constants.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    super.key,
    required this.label,
    required this.icon,
    required this.onchange,
  });
  final String label;
  final Icon icon;
  final void Function(String) onchange;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool visible = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: widget.onchange,
      obscureText: widget.label == 'Password' ? visible : false,
      decoration: InputDecoration(
        filled: true,
        fillColor: ColorsManger.kGreyColor.withOpacity(0.1),
        errorStyle: TextStyle(color: ColorsManger.kScendryColor),
        contentPadding: EdgeInsets.all(20),
        labelText: widget.label,
        labelStyle: TextStyle(
          color: ColorsManger.kScendryColor.withOpacity(0.6),
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
        suffixIconColor: Colors.black,
        suffixIcon: widget.label == 'Password'
            ? IconButton(
                onPressed: () {
                  if (visible == true) {
                    visible = false;
                    setState(() {});
                  } else {
                    visible = true;
                    setState(() {});
                  }
                },
                icon: Icon(
                    visible == true ? Icons.visibility : Icons.visibility_off),
              )
            : null,
        prefixIcon: widget.icon,
        border: CustomOutlineInputBorder(color: ColorsManger.kGreyColor),
        errorBorder:
            CustomOutlineInputBorder(color: ColorsManger.kScendryColor),
        enabledBorder: CustomOutlineInputBorder(
          color: ColorsManger.kGreyColor.withOpacity(0.1),
        ),
        focusedBorder:
            CustomOutlineInputBorder(color: ColorsManger.kScendryColor),
        focusedErrorBorder:
            CustomOutlineInputBorder(color: ColorsManger.kScendryColor),
      ),
      validator: validtorMethod,
    );
  }

  String? validtorMethod(value) {
    if (value!.isEmpty) {
      return '${widget.label} is required';
    } else {
      if (widget.label == 'Email' && value.length >= 11) {
        if (value.substring(value.length - 10, value.length) != '@gmail.com') {
          return 'this ${widget.label} is not correct fromat';
        } else {
          return null;
        }
      } else if (value.length <= 6 && widget.label == 'Password') {
        return 'this Password is short';
      } else if ({widget.label} == 'Email' && value.length <= 10) {
        return 'this ${widget.label} is not correct';
      } else {
        return null;
      }
    }
  }

  OutlineInputBorder CustomOutlineInputBorder({required Color color}) {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: color,
      ),
      borderRadius: BorderRadius.circular(12),
    );
  }
}
