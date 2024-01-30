import 'package:flutter/material.dart';
import 'package:i_learn/core/utils/styles.dart';
import 'package:i_learn/features/onbording/data/models/onbording_item_model.dart';

class OnbordingItem extends StatelessWidget {
  const OnbordingItem({
    super.key,
    required this.onbordingItem,
  });
  final OnbordingItemModel onbordingItem;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Align(
          alignment: Alignment.topRight,
          child: Text(
            "Skip",
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.42,
          width: double.infinity,
          decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage(onbordingItem.imageUrl))),
        ),
        //   SizedBox(height: 50),
        Text(
          onbordingItem.title,
          style: TextStyleManger.textStyleAleoRegular24,
        ),
        Text(
          onbordingItem.subTitle,
          textAlign: TextAlign.center,
          style: TextStyleManger.textStyleAleoRegular16,
        ),
      ],
    );
  }
}
