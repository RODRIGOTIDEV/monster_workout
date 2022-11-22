// ignore_for_file: constant_identifier_names

import 'package:get/get.dart';
import 'package:workout_fitness/app/pages/started/about_page.dart';
import 'package:workout_fitness/app/pages/started/forget_password.dart';
import 'package:workout_fitness/app/pages/started/login_page.dart';
import 'package:workout_fitness/app/pages/started/registration_page.dart';
import 'package:workout_fitness/app/pages/started/welcome_page.dart';
import '../core.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.WELCOME;

  static final routes = [
    GetPage(
      name: Routes.WELCOME,
      page: () => const WelcomePage(),
    ),
    GetPage(
      name: Routes.ABOUT,
      page: () => const AboutPage(),
    ),
    GetPage(
      name: Routes.LOGIN,
      page: () => const LoginPage(),
    ),
    GetPage(
      name: Routes.FORGET,
      page: () => const ForgetPassword(),
    ),
    GetPage(
      name: Routes.REGISTRATION,
      page: () => const RegistrationPage(),
    ),
  ];
}
