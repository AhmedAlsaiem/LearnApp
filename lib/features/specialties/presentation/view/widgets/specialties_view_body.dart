import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:i_learn/core/utils/appRouters.dart';
import 'package:i_learn/core/utils/constants.dart';
import 'package:i_learn/core/utils/styles.dart';
import 'package:i_learn/core/widgets/custom_botton.dart';
import 'package:i_learn/features/specialties/presentation/view/widgets/row_five.dart';
import 'package:i_learn/features/specialties/presentation/view/widgets/row_four.dart';
import 'package:i_learn/features/specialties/presentation/view/widgets/row_one.dart';
import 'package:i_learn/features/specialties/presentation/view/widgets/row_six.dart';
import 'package:i_learn/features/specialties/presentation/view/widgets/row_three.dart';
import 'package:i_learn/features/specialties/presentation/view/widgets/row_tow.dart';

class SpecialtiesViewBody extends StatelessWidget {
  const SpecialtiesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.all(PaddingManger.defultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: double.infinity,
              height: PaddingManger.defultPadding,
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                'Choose your prefered domains',
                style: TextStyleManger.textStyleAleoRegular24
                    .copyWith(fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(height: PaddingManger.defultPadding * 4),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                RowOne(),
                SizedBox(height: PaddingManger.defultPadding),
                RowTow(),
                SizedBox(height: PaddingManger.defultPadding),
                RowThree(),
                SizedBox(height: PaddingManger.defultPadding),
                RowFour(),
                SizedBox(height: PaddingManger.defultPadding),
                RowFive(),
                SizedBox(height: PaddingManger.defultPadding),
                RowSix(),
                SizedBox(height: PaddingManger.defultPadding),
              ],
            ),
            SizedBox(height: PaddingManger.defultPadding * 4),
            CustomButton(
              label: 'Start now',
              onPressed: () {
                GoRouter.of(context).push(AppRouter.kHomeView);
              },
            )
          ],
        ),
      ),
    );
  }
}
