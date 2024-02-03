
import 'package:flutter/material.dart';
import 'package:i_learn/core/utils/constants.dart';
import 'package:i_learn/features/specialties/presentation/view/widgets/custom_domain_continer.dart';

class RowThree extends StatelessWidget {
  const RowThree({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Row(
        children: [
          Expanded(child: SizedBox()),
          CustomDomainContiner(flex: 3, title: 'Front-end'),
          SizedBox(width: PaddingManger.defultPadding),
          CustomDomainContiner(flex: 3, title: 'Back-end'),
          Expanded(child: SizedBox()),
        ],
      ),
    );
  }
}
