
import 'package:flutter/material.dart';
import 'package:i_learn/core/utils/constants.dart';
import 'package:i_learn/features/specialties/presentation/view/widgets/custom_domain_continer.dart';

class RowFour extends StatelessWidget {
  const RowFour({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Row(
        children: [
          Expanded(child: SizedBox()),
          CustomDomainContiner(flex: 2, title: 'Art'),
          SizedBox(width: PaddingManger.defultPadding),
          CustomDomainContiner(flex: 4, title: 'Photoshop'),
          Expanded(child: SizedBox()),
        ],
      ),
    );
  }
}
