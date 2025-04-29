import 'package:flutter/material.dart';
import 'package:app_fluxolivre/src/widget/input_login_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/img_fundologin.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 200,
                width: 200,
                child: Image(
                  image: AssetImage("assets/images/et.png"),
                ),
              ),
              const SizedBox(height: 30),
              InputLoginWidget(
                icon: Icons.person_2_outlined,
                hint: 'Usuário',
                obscure: false,
              ),
              const SizedBox(height: 16),
              InputLoginWidget(
                icon: Icons.lock_outline,
                hint: 'Senha',
                obscure: true,
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFFC107),
                  minimumSize: const Size(double.infinity, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed('/home');
                },
                child: const Text(
                  'Entrar',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF031C5F),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/new_usuario');
                },
                child: const Text(
                  'Novo Usuário? Cadastre-se',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFFFFC107),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
