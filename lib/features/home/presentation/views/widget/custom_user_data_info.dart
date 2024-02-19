
import 'package:flutter/material.dart';
import 'package:i_learn/core/utils/constants.dart';
import 'package:i_learn/features/home/presentation/views/widget/custom_list_tile.dart';

class CustomUserDataInfo extends StatelessWidget {
  const CustomUserDataInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: PaddingManger.defultPadding),
      child: Column(
        children: [
          CustomListTile(
            loadingIcon: Icons.person_2_outlined,
            title: 'user name',
            tralingstate: false,
          ),
          SizedBox(height: PaddingManger.defultPadding * 1.25),
          CustomListTile(
            loadingIcon: Icons.email_outlined,
            title: 'email',
            tralingstate: false,
          ),
          SizedBox(height: PaddingManger.defultPadding * 1.25),
          CustomListTile(
            loadingIcon: Icons.lock_outline_rounded,
            title: 'password',
            tralingstate: false,
          ),
          SizedBox(height: PaddingManger.defultPadding * 1.25),
          CustomListTile(
            loadingIcon: Icons.lock_outline_rounded,
            title: 'config password',
            tralingstate: false,
          ),
        ],
      ),
    );
  }
}
