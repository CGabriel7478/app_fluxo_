import 'package:app_fluxolivre/src/widget/input_login_widget.dart';
import 'package:flutter/material.dart';

class NewUsuario extends StatefulWidget {
  const NewUsuario({super.key});

  @override
  State<NewUsuario> createState() => _NewUsuarioState();
}

class _NewUsuarioState extends State<NewUsuario> {
  final _formKey = GlobalKey<FormState>();

  final _nomeController = TextEditingController();
  final _emailController = TextEditingController();
  final _cpfController = TextEditingController();
  final _senhaController = TextEditingController();
  final _confirmarSenhaController = TextEditingController();

  @override
  void dispose() {
    _nomeController.dispose();
    _emailController.dispose();
    _cpfController.dispose();
    _senhaController.dispose();
    _confirmarSenhaController.dispose();
    super.dispose();
  }

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
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
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
                    hint: 'Nome',
                    obscure: false,
                    controller: _nomeController,
                  ),
                  const SizedBox(height: 16),
                  InputLoginWidget(
                    icon: Icons.email_outlined,
                    hint: 'E-mail',
                    obscure: false,
                    controller: _emailController,
                  ),
                  const SizedBox(height: 16),
                  InputLoginWidget(
                    icon: Icons.badge_outlined,
                    hint: 'CPF',
                    obscure: false,
                    controller: _cpfController,
                  ),
                  const SizedBox(height: 16),
                  InputLoginWidget(
                    icon: Icons.lock_outline,
                    hint: 'Senha',
                    obscure: true,
                    controller: _senhaController,
                  ),
                  const SizedBox(height: 16),
                  InputLoginWidget(
                    icon: Icons.lock_outline,
                    hint: 'Confirmar Senha',
                    obscure: true,
                    controller: _confirmarSenhaController,
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
                      if (_formKey.currentState!.validate()) {
                        Navigator.of(context).pushNamed('/home');
                      }
                    },
                    child: const Text(
                      'Cadastrar',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF031C5F),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF031C5F),
                      minimumSize: const Size(double.infinity, 60),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text(
                      'Cancelar',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
