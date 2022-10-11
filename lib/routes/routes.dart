import 'package:smart_tools/features/diary/views/create_diary.dart';

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

  //Diary
  static const String diaryHome = '/feature/diary_home';

  //Create Diary
  static const String createDiary = '/feature/create_diary';

  // GETTERS
  // Authentication Routes
  static String getRegisterRoute() => registerAccount;
  static String getLoginRoute() => loginAccount;

  //Splash Screen
  static String getSplashScreenRoute() => splashScreen;

  //Home
  static String getHomeRoute() => home;

  //Diary
  static String getDiaryHomeRoute() => diaryHome;

  static String getCreateDiaryRoute() => createDiary;

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

    //Diary
    GetPage(
      name: getDiaryHomeRoute(),
      page: () => const DiaryHomePage(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(seconds: 0, milliseconds: 400),
      curve: Curves.fastOutSlowIn,
    ),
    GetPage(
      name: getCreateDiaryRoute(),
      page: () => const CreateDiaryPage(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(seconds: 0, milliseconds: 400),
      curve: Curves.fastOutSlowIn,
    ),
  ];
}
