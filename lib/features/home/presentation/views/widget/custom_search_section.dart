import 'package:flutter/material.dart';
import 'package:i_learn/core/utils/constants.dart';
import 'package:i_learn/features/home/presentation/views/widget/custom_person_name_image.dart';
import 'package:i_learn/features/home/presentation/views/widget/custom_text_form_search.dart';
import 'package:i_learn/features/home/presentation/views/widget/home_view_body.dart';

class CustomSearchSection extends StatelessWidget {
  const CustomSearchSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.30,
      decoration: CustomBoxDecoration(),
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(PaddingManger.defultPadding),
          child: Column(
            children: [
              SizedBox(height: PaddingManger.defultPadding * 0.5),
              personNameAndImage(),
              SizedBox(height: PaddingManger.defultPadding * 1.5),
              CustomSearchTextFormField()
            ],
          ),
        ),
      ),
    );
  }
}
