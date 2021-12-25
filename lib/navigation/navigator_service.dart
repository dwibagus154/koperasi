import 'package:flutter/material.dart';

class NavigatorService {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  Future<dynamic> navigateTo(String routeName) {
    return navigatorKey.currentState!.pushNamed(routeName);
  }

  Future<dynamic> navigatePushTo(String routeName) {
    return navigatorKey.currentState!.pushNamed(routeName);
  }

  Future<dynamic> navigatePopAndPushTo(String routeName) {
    return navigatorKey.currentState!.popAndPushNamed(routeName);
  }

  goBack() {
    navigatorKey.currentState!.pop();
  }
}
