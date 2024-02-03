import 'package:flutter/material.dart';
import 'package:i_learn/core/utils/constants.dart';
import 'package:i_learn/core/utils/styles.dart';

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
            )
          ],
        ),
      ),
    );
  }
}

class RowOne extends StatelessWidget {
  const RowOne({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Row(
        children: [
          Expanded(child: SizedBox()),
          CustomDomainContiner(flex: 2, title: 'UI UX Design'),
          Expanded(child: SizedBox()),
        ],
      ),
    );
  }
}

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

class CustomDomainContiner extends StatefulWidget {
  CustomDomainContiner({
    super.key,
    required this.flex,
    required this.title,
  });
  final int flex;
  final title;

  @override
  State<CustomDomainContiner> createState() => _CustomDomainContinerState();
}

class _CustomDomainContinerState extends State<CustomDomainContiner> {
  late Color fontColor = ColorsManger.kScendryColor;
  late Color backgroundColor = ColorsManger.kWhiteColor;
  late Color borderColor = ColorsManger.kScendryColor.withOpacity(0.6);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: widget.flex,
      child: GestureDetector(
        onTap: () {
          if (fontColor == ColorsManger.kScendryColor) {
            fontColor = ColorsManger.kWhiteColor;
            backgroundColor = ColorsManger.kPrimaryColor;
            borderColor = ColorsManger.kPrimaryColor;
            setState(() {});
          } else {
            fontColor = ColorsManger.kScendryColor;
            backgroundColor = ColorsManger.kWhiteColor;
            borderColor = ColorsManger.kScendryColor.withOpacity(0.6);
            setState(() {});
          }
        },
        child: Container(
          decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: borderColor, width: 2.0)),
          child: Center(
            child: Text(
              widget.title,
              style: TextStyleManger.textStyleAleoRegular16.copyWith(
                fontWeight: FontWeight.w800,
                color: fontColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
