
import 'package:flutter/material.dart';
import 'package:i_learn/features/specialties/presentation/view/widgets/custom_domain_continer.dart';

class RowSix extends StatelessWidget {
  const RowSix({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Row(
        children: [
          Expanded(child: SizedBox()),
          CustomDomainContiner(
            flex: 1,
            title: 'UI UX Design',
          ),
          Expanded(child: SizedBox()),
        ],
      ),
    );
  }
}
