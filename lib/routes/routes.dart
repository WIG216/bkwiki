import 'package:bkwiki/views/pages/bank_detail_page.dart';
import 'package:bkwiki/views/pages/home_page.dart';
import 'package:bkwiki/views/pages/login_page.dart';
import 'package:get/get.dart';

class RouteClass {
  static String login = "/";
  static String home = "/home";
  static String bank = "/bank";


  static String getLogin() => login;
  static String getHome() => home;
  static String getBank() => bank;


  static List<GetPage> routes = [

    GetPage(page: () => LoginPage(), name: login),
    GetPage(page: () => HomePage(), name: home),
    GetPage(page: () => BankPage(), name: bank),
  ];
}