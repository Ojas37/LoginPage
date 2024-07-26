import 'package:ngodummy/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:ngodummy/presentation/sign_in_screen/binding/sign_in_binding.dart';
import 'package:ngodummy/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:ngodummy/presentation/sign_up_screen/binding/sign_up_binding.dart';
import 'package:ngodummy/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:ngodummy/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String signInScreen = '/sign_in_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: signInScreen,
      page: () => SignInScreen(),
      bindings: [
        SignInBinding(),
      ],
    ),
    GetPage(
      name: signUpScreen,
      page: () => SignUpScreen(),
      bindings: [
        SignUpBinding(),
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
      page: () => SignInScreen(),
      bindings: [
        SignInBinding(),
      ],
    )
  ];
}
