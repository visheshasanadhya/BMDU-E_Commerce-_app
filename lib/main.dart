// flutter build apk --release --no-tree-shake-icons
// flutter build web --release --no-tree-shake-icons --base-href "/e_commerce/"
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'routes/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'My Mobi Mart',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      initialRoute: AppRoutes.login,
      getPages: AppRoutes.pages,
    );
  }
}

