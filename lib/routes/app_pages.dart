import 'package:get/get.dart';
import '../modules/splash/splash_page.dart';
import '../modules/home/home_page.dart';
import '../modules/map/map_page.dart';
import '../modules/forecast/forecast_page.dart';
import '../modules/action/action_page.dart';
import '../modules/story/story_page.dart';
import '../modules/settings/settings_page.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(name: Routes.SPLASH, page: () => SplashPage()),
    GetPage(name: Routes.HOME, page: () => HomePage()),
    GetPage(name: Routes.MAP, page: () => MapPage()),
    GetPage(name: Routes.FORECAST, page: () => ForecastPage()),
    GetPage(name: Routes.ACTION, page: () => ActionPage()),
    GetPage(name: Routes.STORY, page: () => StoryPage()),
    GetPage(name: Routes.SETTINGS, page: () => SettingsPage()),
  ];
}