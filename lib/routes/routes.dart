import 'exports.dart';

class RoutesClass {
  // Onboarding Routes
  static const String splashScreen = '/splash/onboarding';
  // URLS
  // Authentication Routes
  static const String registerAccount = '/auth/register';
  static const String loginAccount = '/auth/login';

  //home
  static const String home = '/home';

  // GETTERS
  // Authentication Routes
  static String getRegisterRoute() => registerAccount;
  static String getLoginRoute() => loginAccount;

  //Splash Screen
  static String getSplashScreenRoute() => splashScreen;

  //Splash Screen
  static String getHomeRoute() => home;

  // ROUTING FUNCTION
  static List<GetPage> routes = [
    // AUTHENTICATION ROUTES
    GetPage(
      name: getRegisterRoute(),
      page: () => const SignUpPage(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(seconds: 0, milliseconds: 400),
      curve: Curves.fastOutSlowIn,
    ),
    GetPage(
      name: getLoginRoute(),
      page: () => const LoginPage(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(seconds: 0, milliseconds: 400),
      curve: Curves.fastOutSlowIn,
    ),

    //Splash Screen
    GetPage(
      name: getSplashScreenRoute(),
      page: () => const SplashScreen(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(seconds: 0, milliseconds: 400),
      curve: Curves.fastOutSlowIn,
    ),

    //Home
    GetPage(
      name: getHomeRoute(),
      page: () => const HomePage(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(seconds: 0, milliseconds: 400),
      curve: Curves.fastOutSlowIn,
    ),
  ];
}
