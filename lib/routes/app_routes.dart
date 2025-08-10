import 'package:get/get.dart';
import '../pages/login_page.dart';
import '../pages/signup_page.dart';
import '../pages/home_page.dart';
import '../pages/product_detail_page.dart';
import '../models/product_model.dart';

class AppRoutes {
  static const login = '/login';
  static const signup = '/signup';
  static const home = '/home';
  static const productDetail = '/product-detail';

  static final pages = [
    GetPage(name: login, page: () =>  LoginPage()),
    GetPage(name: signup, page: () => const SignUpPage()),
    GetPage(name: home, page: () => const HomePage()),
    GetPage(
      name: productDetail,
      page: () {
        final args = Get.arguments;
        if (args is Product) {
          return ProductDetailPage(product: args);
        } else {
          // fallback: empty product
          return ProductDetailPage(product: Product.empty());
        }
      },
    ),
  ];
}
