import 'package:flutter/material.dart';
import 'package:i_learn/features/specialties/presentation/view/widgets/custom_domain_continer.dart';

class RowTow extends StatelessWidget {
  const RowTow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Row(
        children: [
          Expanded(child: SizedBox()),
          CustomDomainContiner(flex: 4, title: 'Business Administration'),
          Expanded(child: SizedBox()),
        ],
      ),
    );
  }
}
