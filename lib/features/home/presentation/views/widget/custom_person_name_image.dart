import 'package:flutter/material.dart';
import 'package:i_learn/core/utils/constants.dart';
import 'package:i_learn/core/utils/styles.dart';

class personNameAndImage extends StatelessWidget {
  const personNameAndImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: MediaQuery.of(context).size.width * 0.08,
          backgroundImage: AssetImage(AssetsManger.myFriends),
        ),
        SizedBox(width: 15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome',
              style: TextStyleManger.textStyleAleoRegular16.copyWith(
                color: ColorsManger.kWhiteColor.withOpacity(0.7),
              ),
            ),
            Text(
              'Ahmed Alsaiem',
              style: TextStyleManger.textStyleAleoRegular16.copyWith(
                fontSize: 18,
                color: ColorsManger.kWhiteColor,
              ),
            ),
          ],
        ),
        Spacer(),
        IconButton(
          padding: EdgeInsets.all(4),
          onPressed: () {},
          icon: Icon(
            Icons.notification_add_outlined,
            color: ColorsManger.kWhiteColor,
          ),
        ),
      ],
    );
  }
}
