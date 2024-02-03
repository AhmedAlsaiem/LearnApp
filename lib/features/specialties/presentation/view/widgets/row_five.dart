
import 'package:flutter/material.dart';
import 'package:i_learn/core/utils/constants.dart';
import 'package:i_learn/features/specialties/presentation/view/widgets/custom_domain_continer.dart';


class RowFive extends StatelessWidget {
  const RowFive({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Row(
        children: [
          Expanded(child: SizedBox()),
          CustomDomainContiner(flex: 3, title: 'HR'),
          SizedBox(width: PaddingManger.defultPadding),
          CustomDomainContiner(flex: 3, title: 'IT'),
          SizedBox(width: PaddingManger.defultPadding),
          CustomDomainContiner(flex: 3, title: 'Art'),
          Expanded(child: SizedBox()),
        ],
      ),
    );
  }
}

