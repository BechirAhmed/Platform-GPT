import 'package:bgpt/presentation/creation_d_une_demande_four_screen/creation_d_une_demande_four_screen.dart';
import 'package:bgpt/presentation/demand_details/demande_details_screen.dart';
import 'package:bgpt/presentation/demandes_screen/demandes_screen.dart';
import 'package:bgpt/presentation/profile_screen/profile_screen.dart';
import 'package:bgpt/presentation/settigns_screen/settigns_screen.dart';
import 'package:bgpt/presentation/splash_screen/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'controller/main_class_controller.dart';
import 'models/creationdemandeone_item_model.dart';
import 'package:bgpt/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class MainClassScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return GetBuilder<MainClassController>(
      builder: (controller) {
        return PersistentTabView(
          context,
          controller: controller.navController,
          screens: _buildScreens(),
          items: _navBarsItems(),
          confineInSafeArea: true,
          backgroundColor: Colors.white, // Default is Colors.white.
          handleAndroidBackButtonPress: true, // Default is true.
          resizeToAvoidBottomInset: true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
          stateManagement: true, // Default is true.
          hideNavigationBarWhenKeyboardShows: true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
          decoration: NavBarDecoration(
            borderRadius: BorderRadius.circular(10.0),
            colorBehindNavBar: Colors.white,
          ),
          popAllScreensOnTapOfSelectedTab: true,
          popActionScreens: PopActionScreensType.all,
          itemAnimationProperties: ItemAnimationProperties( // Navigation Bar's items animation properties.
            duration: Duration(milliseconds: 200),
            curve: Curves.ease,
          ),
          screenTransitionAnimation: ScreenTransitionAnimation( // Screen transition animation on change of selected tab.
            animateTabTransition: true,
            curve: Curves.ease,
            duration: Duration(milliseconds: 200),
          ),
          navBarStyle: NavBarStyle.style3, // Choose the nav bar style with this property.
        );
      }
    );
  }

  List<Widget> _buildScreens() {
    return [
      DemandesScreen(),
      SettignsScreen(),
      CreationDUneDemandeFourScreen(),
      ProfileScreen(),
      SplashScreen(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.list_bullet),
        title: ("Demandes"),
        activeColorPrimary: appTheme.blueGray400,
        inactiveColorPrimary: CupertinoColors.systemGrey,
          routeAndNavigatorSettings: RouteAndNavigatorSettings(
              initialRoute: AppRoutes.demandesScreen
          )
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.settings),
        title: ("Settings"),
        activeColorPrimary: appTheme.blueGray400,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.plus),
        title: ("Nouveau"),
        activeColorPrimary: appTheme.blueGray400,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.person),
        title: ("Profile"),
        activeColorPrimary: appTheme.blueGray400,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.ellipsis_circle),
        title: ("Aide"),
        activeColorPrimary: appTheme.blueGray400,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
    ];
  }
}
