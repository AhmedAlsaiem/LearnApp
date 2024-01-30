import 'package:flutter/material.dart';
import 'package:i_learn/core/utils/constants.dart';

class customLogoImage extends StatelessWidget {
  const customLogoImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 250,
        width: 270,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              AssetsManger.logoImage,
            ),
          ),
        ),
      ),
    );
  }
}
