import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/products/basket/bindings/basket_binding.dart';
import '../modules/products/basket/views/basket_view.dart';
import '../modules/products/bindings/products_binding.dart';
import '../modules/products/product/bindings/product_binding.dart';
import '../modules/products/product/views/product_view.dart';
import '../modules/products/views/products_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.PRODUCTS;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.PRODUCTS,
      page: () => const ProductsView(),
      binding: ProductsBinding(),
      children: [
        GetPage(
          name: _Paths.PRODUCT,
          page: () => const ProductView(),
          binding: ProductBinding(),
        ),
        GetPage(
          name: _Paths.BASKET,
          page: () => const BasketView(),
          binding: BasketBinding(),
        ),
      ],
    ),
  ];
}
