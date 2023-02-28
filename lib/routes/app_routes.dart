import 'package:get/get.dart';

import '../modules/splash/splash.dart' as splash;
import '../modules/home/home.dart' as home;
import '../modules/list/list.dart' as list;
import '../modules/search/search.dart' as search;
import '../modules/detail/detail.dart' as detail;
import '../modules/about/about.dart' as about;

class AppRoutes {

  static const String splashPath = '/splash';
  static const String homePath = '/home';
  static const String listPath = '/list';
  static const String searchPath = '/search';
  static const String detailPath = '/detail';
  static const String aboutPath = '/about';

  static final routes = [
    GetPage(
        name: splashPath,
        page: () => const splash.SplashPage()),

    GetPage(
        name: homePath,
        page: () => const home.HomePage(),
        binding: home.HomeBinding()
    ),

    GetPage(
        name: listPath,
        page: () => const list.ListPage(),
        binding: list.ListBinding()
    ),

    GetPage(
        name: searchPath,
        page: () => const search.SearchPage(),
        binding: search.SearchBinding()
    ),

    GetPage(
        name: detailPath,
        page: () => const detail.DetailPage(),
        binding: detail.DetailBinding()
    ),

    GetPage(
        name: aboutPath,
        page: () => const about.AboutPage()),
  ];
}