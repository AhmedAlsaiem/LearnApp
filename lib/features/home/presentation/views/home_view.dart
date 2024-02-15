import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:i_learn/core/utils/constants.dart';
import 'package:i_learn/features/home/presentation/manager/home_view_controller.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: homeController(index: currentIndex),
        bottomNavigationBar: BottomNavigationBar(
            onTap: (value) {
              currentIndex = value;
              setState(() {});
            },
            backgroundColor: ColorsManger.kWhiteColor,
            // useLegacyColorScheme: false,

            elevation: 0,
            mouseCursor: MouseCursor.defer,
            currentIndex: currentIndex,
            selectedItemColor: ColorsManger.kPrimaryColor,
            selectedLabelStyle: TextStyle(
              color: ColorsManger.kPrimaryColor,
            ),
            type: BottomNavigationBarType.fixed,
            showUnselectedLabels: true,
            items: [
              BottomNavigationBarItem(
                icon: Icon(currentIndex == 0
                    ? Icons.home_rounded
                    : Icons.home_outlined),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  currentIndex == 1
                      ? FontAwesomeIcons.solidAddressCard
                      : FontAwesomeIcons.addressCard,
                ),
                label: 'My courses',
              ),
              BottomNavigationBarItem(
                icon: Icon(currentIndex == 2
                    ? Icons.settings
                    : Icons.settings_outlined),
                label: 'settings',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                    currentIndex == 3 ? Icons.person : Icons.person_outline),
                label: 'Profile',
              )
            ]),
      ),
    );
  }
}
