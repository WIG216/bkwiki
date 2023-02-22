import 'package:bkwiki/views/pages/atm_locator_page.dart';
import 'package:bkwiki/views/pages/bank_detail_page.dart';
import 'package:bkwiki/views/pages/branch_page.dart';
import 'package:bkwiki/views/pages/home_page.dart';
import 'package:bkwiki/views/pages/login_page.dart';
import 'package:bkwiki/views/pages/mobile_page.dart';
import 'package:bkwiki/views/pages/multicanal_detail_page.dart';
import 'package:bkwiki/views/pages/multicanal_page.dart';
import 'package:bkwiki/views/pages/registration_page.dart';
import 'package:get/get.dart';

class RouteClass {
  static String login = "/";
  static String home = "/home";
  static String bank = "/bank";
  static String register = "/register";
  static String branch = "/branch";
  static String atmlocator = "/atmlocator";
  static String mobile = "/mobile";
  static String multicanal = "/multicanal";
  static String multicanaldetail = "/multicanal/bank";

  static String getLogin() => login;
  static String getRegistration() => register;
  static String getHome() => home;
  static String getBank() => bank;
  static String getBranch() => branch;
  static String getAtmLocator() => atmlocator;
  static String getMobile() => mobile;
  static String getMultiCanal() => multicanal;
  static String getMultiCanalDetail() => multicanaldetail;

  static List<GetPage> routes = [
    GetPage(page: () => LoginPage(), name: login),
    GetPage(page: () => RegistrationPage(), name: register),
    GetPage(page: () => HomePage(), name: home),
    GetPage(page: () => BankPage(), name: bank),
    GetPage(page: () => BranchPage(), name: branch),
    GetPage(page: () => AtmLocator(), name: atmlocator),
    GetPage(page: () => MobilePage(), name: mobile),
    GetPage(page: () => MultiCanalPage(), name: multicanal),
    GetPage(page: () => MultiCanalDetailPage(), name: multicanaldetail),
  ];
}
