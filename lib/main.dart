import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:login_signup_page/screens/LoginScreen.dart';
import 'package:login_signup_page/screens/ProfileScreen.dart';
import 'package:login_signup_page/screens/SignUpScreen.dart';

void main() {
  runApp(MyMaterial());
}

final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const MyScaffold();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'Profile',
          builder: (BuildContext context, GoRouterState state) {
            return MyProfile();
          },
        ),
        GoRoute(
          path: 'SignUp',
          builder: (BuildContext context, GoRouterState state) {
            return MySignUp();
          },
        ),
      ],
    ),
  ],
);


class MyMaterial extends StatefulWidget {
  MyMaterial({super.key});

  @override
  State<MyMaterial> createState() => _MyMaterialState();
}

class _MyMaterialState extends State<MyMaterial> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(
      title: " My Profile Application ",
      debugShowCheckedModeBanner: false,
      routerConfig: _router,
    );
  }
}

