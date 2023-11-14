import 'package:bgpt/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:bgpt/presentation/sign_up_screen/binding/sign_up_binding.dart';
import 'package:bgpt/presentation/sign_up_two_screen/sign_up_two_screen.dart';
import 'package:bgpt/presentation/sign_up_two_screen/binding/sign_up_two_binding.dart';
import 'package:bgpt/presentation/otp_screen/otp_screen.dart';
import 'package:bgpt/presentation/otp_screen/binding/otp_binding.dart';
import 'package:bgpt/presentation/login_screen/login_screen.dart';
import 'package:bgpt/presentation/login_screen/binding/login_binding.dart';
import 'package:bgpt/presentation/creation_d_une_demande_one_screen/creation_d_une_demande_one_screen.dart';
import 'package:bgpt/presentation/creation_d_une_demande_one_screen/binding/creation_d_une_demande_one_binding.dart';
import 'package:bgpt/presentation/splash_screen/splash_screen.dart';
import 'package:bgpt/presentation/splash_screen/binding/splash_binding.dart';
import 'package:bgpt/presentation/onboarding_screen/onboarding_screen.dart';
import 'package:bgpt/presentation/onboarding_screen/binding/onboarding_binding.dart';
import 'package:bgpt/presentation/creation_d_une_demande_four_screen/creation_d_une_demande_four_screen.dart';
import 'package:bgpt/presentation/creation_d_une_demande_four_screen/binding/creation_d_une_demande_four_binding.dart';
import 'package:bgpt/presentation/demandes_screen/demandes_screen.dart';
import 'package:bgpt/presentation/demandes_screen/binding/demandes_binding.dart';
import 'package:bgpt/presentation/profile_one_screen/profile_one_screen.dart';
import 'package:bgpt/presentation/profile_one_screen/binding/profile_one_binding.dart';
import 'package:bgpt/presentation/profile_screen/profile_screen.dart';
import 'package:bgpt/presentation/profile_screen/binding/profile_binding.dart';
import 'package:bgpt/presentation/settigns_screen/settigns_screen.dart';
import 'package:bgpt/presentation/settigns_screen/binding/settigns_binding.dart';
import 'package:bgpt/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:bgpt/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String signUpScreen = '/sign_up_screen';

  static const String signUpTwoScreen = '/sign_up_two_screen';

  static const String otpScreen = '/otp_screen';

  static const String loginScreen = '/login_screen';

  static const String creationDUneDemandeOneScreen =
      '/creation_d_une_demande_one_screen';

  static const String splashScreen = '/splash_screen';

  static const String onboardingScreen = '/onboarding_screen';

  static const String creationDUneDemandeFourScreen =
      '/creation_d_une_demande_four_screen';

  static const String demandesScreen = '/demandes_screen';

  static const String profileOneScreen = '/profile_one_screen';

  static const String profileScreen = '/profile_screen';

  static const String settignsScreen = '/settigns_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: signUpScreen,
      page: () => SignUpScreen(),
      bindings: [
        SignUpBinding(),
      ],
    ),
    GetPage(
      name: signUpTwoScreen,
      page: () => SignUpTwoScreen(),
      bindings: [
        SignUpTwoBinding(),
      ],
    ),
    GetPage(
      name: otpScreen,
      page: () => OtpScreen(),
      bindings: [
        OtpBinding(),
      ],
    ),
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    ),
    GetPage(
      name: creationDUneDemandeOneScreen,
      page: () => CreationDUneDemandeOneScreen(),
      bindings: [
        CreationDUneDemandeOneBinding(),
      ],
    ),
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: onboardingScreen,
      page: () => OnboardingScreen(),
      bindings: [
        OnboardingBinding(),
      ],
    ),
    GetPage(
      name: creationDUneDemandeFourScreen,
      page: () => CreationDUneDemandeFourScreen(),
      bindings: [
        CreationDUneDemandeFourBinding(),
      ],
    ),
    GetPage(
      name: demandesScreen,
      page: () => DemandesScreen(),
      bindings: [
        DemandesBinding(),
      ],
    ),
    GetPage(
      name: profileOneScreen,
      page: () => ProfileOneScreen(),
      bindings: [
        ProfileOneBinding(),
      ],
    ),
    GetPage(
      name: profileScreen,
      page: () => ProfileScreen(),
      bindings: [
        ProfileBinding(),
      ],
    ),
    GetPage(
      name: settignsScreen,
      page: () => SettignsScreen(),
      bindings: [
        SettignsBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    )
  ];
}
