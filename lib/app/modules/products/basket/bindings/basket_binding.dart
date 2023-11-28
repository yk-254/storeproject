import 'package:get/get.dart';

import '../controllers/basket_controller.dart';

class BasketBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BasketController>(
      () => BasketController(),
    );
  }
}
