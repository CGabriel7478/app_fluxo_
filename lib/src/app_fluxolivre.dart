import 'package:app_fluxolivre/src/pages/login_page.dart';
import 'package:app_fluxolivre/src/pages/home_page.dart';
import 'package:app_fluxolivre/src/pages/new_usuario.dart';
import 'package:flutter/material.dart';

class AppFluxolivre extends StatelessWidget {
  const AppFluxolivre({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AppFluxolivre',
      routes: {
        '/': (_) => const LoginPage(),
        '/home': (_) => const HomePage(),
        '/new_usuario': (_) => const NewUsuario(),
      },
    );
  }
}
