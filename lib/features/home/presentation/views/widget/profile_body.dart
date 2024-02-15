import 'package:flutter/material.dart';
import 'package:i_learn/core/utils/constants.dart';
import 'package:i_learn/core/utils/styles.dart';
import 'package:i_learn/features/authantication/presentation/view/widget/custom_logo_continer.dart';
import 'package:i_learn/features/home/presentation/views/widget/custom_list_tile.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CustomLogoContiner(
          height: MediaQuery.of(context).size.height * 0.40,
          child: Column(
            children: [
              SafeArea(
                child: Column(
                  children: [
                    SizedBox(height: PaddingManger.defultPadding * 0.5),
                    Text(
                      'Profile',
                      style: TextStyleManger.textStyleAleoRegular24.copyWith(
                        color: ColorsManger.kWhiteColor.withOpacity(0.95),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: PaddingManger.defultPadding),
                    CircleAvatar(
                      radius: MediaQuery.of(context).size.width * 0.12,
                      backgroundImage: AssetImage(AssetsManger.myFriends),
                    ),
                    SizedBox(height: PaddingManger.defultPadding * 0.5),
                    Text(
                      'Ahmed Alsaiem',
                      style: TextStyleManger.textStyleAleoRegular24.copyWith(
                        color: ColorsManger.kWhiteColor,
                      ),
                    ),
                    Text(
                      'AhmedAlsaiem2025@gmail.com',
                      style: TextStyleManger.textStyleAleoRegular16.copyWith(
                        color: ColorsManger.kWhiteColor.withOpacity(0.6),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: PaddingManger.defultPadding),
        Padding(
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
        )
      ],
    );
  }
}
