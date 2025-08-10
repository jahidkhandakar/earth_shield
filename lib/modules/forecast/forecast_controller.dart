import 'package:get/get.dart';

class ForecastController extends GetxController {
  var temperature = 0.0.obs;
  var humidity = 0.obs;

  @override
  void onInit() {
    super.onInit();
    fetchMockForecast();
  }

  void fetchMockForecast() {
    Future.delayed(Duration(seconds: 1), () {
      temperature.value = 29.5;
      humidity.value = 85;
    });
  }
}
