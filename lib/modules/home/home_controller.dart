import 'package:get/get.dart';

class HomeController extends GetxController {
  var isLoading = false.obs;
  var welcomeMessage = 'Welcome to EarthShield!'.obs;

  void simulateDataLoad() {
    isLoading.value = true;
    Future.delayed(Duration(seconds: 2), () {
      welcomeMessage.value = 'Flood risk data updated!';
      isLoading.value = false;
    });
  }
}
