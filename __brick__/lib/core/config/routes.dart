import 'package:beta_ai/presentation/pages/error/error_page.dart';
import 'package:beta_ai/presentation/pages/main_page/main_screen.dart';
import 'package:beta_ai/presentation/pages/my_progress/my_progress_page.dart';
import 'package:beta_ai/presentation/pages/profile/profile_page.dart';
import 'package:beta_ai/presentation/pages/webview/in_app_web_view_screen.dart';
import 'package:flutter/material.dart';

// ignore: constant_identifier_names
enum TransitionAnimate {
  Slide,
  Fade,
  Scale,
  Rotate,
  Size,
  FadeIn,
  FadeOut,
  RotateScale,
  SlideFade,
  SlideFadeRotate
}

class AppRoutes {
  // 📌 Define route
  static const String home = "/";
  static const String myProgress = "/my-progress";
  static const String profile = "/profile";
  static const String login = "/login";
  static const String register = "/register";
  static const String main = "/profile";
  static const String inappWebview = "/inapp-webview";

  // 📌 Define argument name
  // Some argument name will be defined here
  static const String argPageName = "page_name";
  static const String argUrl = "url";
}

// 📌 Handle route
Route<dynamic> generateRoute(RouteSettings settings,
    {TransitionAnimate customAnimation = TransitionAnimate.Slide}) {
  Map<String, dynamic> arguments =
      settings.arguments as Map<String, dynamic>? ?? {};

  var _route = _animateRoute(settings);

  switch (settings.name) {
    case AppRoutes.home:
      return _route(const MainScreen());
    case AppRoutes.myProgress:
      return _route(const MyProgressPage());
    case AppRoutes.profile:
      return _route(const ProfilePage());
    case AppRoutes.inappWebview:
      return _route(InAppWebViewScreen(url: arguments[AppRoutes.argUrl]));
    default:
      return _route(const ErrorPage());
  }
}

// 📌 Handle route with animation
_animateRoute(RouteSettings settings) {
  return (Widget child) => PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => child,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return SlideTransition(
            position: animation.drive(
              Tween(
                begin: const Offset(1.0, 0.0),
                end: Offset.zero,
              ).chain(CurveTween(curve: Curves.fastOutSlowIn)),
            ),
            child: child,
          );
        },
      );
}
