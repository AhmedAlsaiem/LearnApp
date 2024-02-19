import 'package:flutter/material.dart';
import 'package:i_learn/core/utils/constants.dart';
import 'package:i_learn/features/home/presentation/views/widget/custom_person_info_section.dart';
import 'package:i_learn/features/home/presentation/views/widget/custom_user_data_info.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CustomPrsonInfoSection(),
        SizedBox(height: PaddingManger.defultPadding),
        CustomUserDataInfo()
      ],
    );
  }
}
