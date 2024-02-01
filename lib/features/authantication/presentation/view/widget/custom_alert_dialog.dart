import 'package:flutter/material.dart';

class CustomAlertDialog extends StatelessWidget {
  const CustomAlertDialog({
    super.key,
    required this.title,
    required this.subTitle,
    this.onPressed,
  });

  final String title;
  final String subTitle;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      actions: [TextButton(onPressed: onPressed, child: Text('Ok'))],
      surfaceTintColor: Colors.white,
      backgroundColor: Colors.white,
      title: Text(title),
      content: Text(subTitle),
    );
  }
}
