import 'package:ecommerce5/pages/auth/dashboard.dart';
import 'package:ecommerce5/pages/auth/register.dart';
import 'package:get/get.dart';

routes()=> [
  GetPage(name: "/register", page: () => Register()),
  GetPage(name: "/login", page: () => Register()),
  GetPage(name: "/dashboard", page: () => DashBoard()),
];
