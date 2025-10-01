import 'package:flutter/material.dart';
import 'package:nti_session_6_task/core/services/service_locator.dart';
import 'package:nti_session_6_task/core/utils/dio_helper.dart';
import 'package:nti_session_6_task/products/presentation/views/products_screen.dart';

void main() {
  DioHelper.init();
  ServiceLocator().init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProductsScreen(),
    );
  }
}
