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
        height: MediaQuery.of(context).size.height * 0.4,
        width: MediaQuery.of(context).size.height * 0.6,
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
