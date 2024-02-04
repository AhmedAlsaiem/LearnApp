import 'package:flutter/material.dart';
import 'package:i_learn/core/utils/constants.dart';
import 'package:i_learn/features/home/presentation/views/widget/custom_person_name_image.dart';
import 'package:i_learn/features/home/presentation/views/widget/custom_search_section.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomSearchSection(),
      ],
    );
  }
}

class CustomSearchSection extends StatelessWidget {
  const CustomSearchSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.32,
      decoration: CustomBoxDecoration(),
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(PaddingManger.defultPadding),
          child: Column(
            children: [
              SizedBox(height: PaddingManger.defultPadding * 0.5),
              personNameAndImage(),
              SizedBox(height: PaddingManger.defultPadding * 2),
              CustomSearchTextFormField()
            ],
          ),
        ),
      ),
    );
  }
}

BoxDecoration CustomBoxDecoration() {
  return BoxDecoration(
    color: ColorsManger.kPrimaryColor,
    borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
  );
}
