import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:i_learn/core/utils/appRouters.dart';
import 'package:i_learn/features/onbording/data/models/onbording_item_model.dart';
import 'package:i_learn/features/onbording/presentation/view/widgets/custom_list_generate.dart';
import 'package:i_learn/features/onbording/presentation/view/widgets/custom_onbording_botton.dart';
import 'package:i_learn/features/onbording/presentation/view/widgets/onbording_item.dart';

class OnbordingViewBody extends StatefulWidget {
  const OnbordingViewBody({super.key});

  @override
  State<OnbordingViewBody> createState() => _OnbordingViewBodyState();
}

class _OnbordingViewBodyState extends State<OnbordingViewBody> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
      child: Column(
        children: [
          SizedBox(height: 50),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.625,
            child: PageView.builder(
              onPageChanged: (value) {
                setState(() {
                  currentIndex = value;
                });
              },
              physics: const BouncingScrollPhysics(
                decelerationRate: ScrollDecelerationRate.fast,
              ),
              itemCount: 3,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return OnbordingItem(
                    onbordingItem: OnbordingItemsList[currentIndex]);
              },
            ),
          ),
          SizedBox(height: 10),
          CustomListGenerate(currentIndex: currentIndex),
          SizedBox(height: 40),
          CustomOnbordingButtom(
            index: currentIndex,
            ontap: () {
              if (currentIndex < 2) {
                currentIndex++;
                setState(() {});
              } else {
                GoRouter.of(context).push(AppRouter.kLoginView);
              }
            },
          )
        ],
      ),
    ));
  }
}
