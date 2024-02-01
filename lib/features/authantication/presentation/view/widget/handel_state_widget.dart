import 'package:flutter/material.dart';
import 'package:i_learn/features/authantication/presentation/view/widget/custom_alert_dialog.dart';

import 'custom_circular_progress_indector.dart';

class HandleStatesWidget extends StatelessWidget {
  const HandleStatesWidget({
    super.key,
    required this.value,
    required this.title,
    required this.subTitle,
    this.onPressed,
  });

  final int value;
  final String title;
  final String subTitle;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Center(
            child: Container(
          color: Colors.grey.withOpacity(0),
          height: MediaQuery.of(context).size.height,
          child: Center(
            child: value == 1
                ? CustomCirculerProgressIndicator()
                : value == 2
                    ? CustomAlertDialog(
                        title: title,
                        subTitle: subTitle,
                        onPressed: onPressed,
                      )
                    : Container(),
          ),
        )),
      ],
    );
  }
}
