import 'package:flutter/material.dart';
import 'package:i_learn/core/utils/constants.dart';
import 'package:i_learn/core/utils/styles.dart';
import 'package:i_learn/features/home/presentation/views/widget/custom_list_tile.dart';
import '../../../../../core/widgets/custom_logo_continer.dart';

class SettingsViewBody extends StatelessWidget {
  const SettingsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomLogoContiner(
          height: MediaQuery.of(context).size.height * 0.26,
          child: Text(
            'Settings',
            style: TextStyleManger.textStyleAleoRegular24
                .copyWith(color: ColorsManger.kWhiteColor),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              SizedBox(height: PaddingManger.defultPadding),
              CustomListTile(
                  title: 'My Account', loadingIcon: Icons.person_2_outlined),
              SizedBox(height: PaddingManger.defultPadding * 1.25),
              CustomListTile(
                  title: 'Natifications',
                  loadingIcon: Icons.notifications_active_outlined),
              SizedBox(height: PaddingManger.defultPadding * 1.25),
              CustomListTile(
                  title: 'Settings', loadingIcon: Icons.settings_outlined),
              SizedBox(height: PaddingManger.defultPadding * 1.25),
              CustomListTile(
                  title: 'Help Center', loadingIcon: Icons.help_outline),
              SizedBox(height: PaddingManger.defultPadding * 1.25),
              CustomListTile(
                  title: 'Log Out', loadingIcon: Icons.logout_outlined),
              SizedBox(height: PaddingManger.defultPadding * 1.25),
            ],
          ),
        ),
      ],
    );
  }
}
