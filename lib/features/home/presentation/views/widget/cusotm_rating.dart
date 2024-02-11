import 'package:flutter/material.dart';
import 'package:i_learn/core/utils/constants.dart';
import 'package:i_learn/core/utils/styles.dart';

class CustomRatingPart extends StatelessWidget {
  const CustomRatingPart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '  ' + '4.8',
          style: TextStyleManger.textStyleAleoRegular16.copyWith(
            fontWeight: FontWeight.bold,
            color: ColorsManger.kScendryColor.withOpacity(0.7),
          ),
        ),
        SizedBox(width: 16),
        Icon(
          Icons.star,
          size: 15,
          color: ColorsManger.korangeAccent,
        ),
        SizedBox(width: 3),
        Icon(
          Icons.star,
          size: 15,
          color: ColorsManger.korangeAccent,
        ),
        SizedBox(width: 3),
        Icon(
          Icons.star,
          size: 15,
          color: ColorsManger.korangeAccent,
        ),
        SizedBox(width: 3),
        Icon(
          Icons.star,
          size: 15,
          color: ColorsManger.korangeAccent,
        ),
        SizedBox(width: 3),
        Icon(
          Icons.star,
          size: 15,
          color: ColorsManger.korangeAccent,
        ),
      ],
    );
  }
}
