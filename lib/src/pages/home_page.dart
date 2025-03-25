import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;

  void incremented() {
    setState(() {
      count++;
    });
  }

  void decrement() {
    setState(() {

      count--;
    });
  }

  bool get isEmpty => count == 0;
  bool get isFull => count == 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/img_fundo.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              isFull ? 'Acesso bloqueado' : 'Acesso liberado',
              style: TextStyle(
                color: isFull ? Colors.red : Color(0xFFFFFFFF),
                fontSize: 40,
                fontWeight: FontWeight.w500
              ),
            ),
            Text(
              count.toString(),
              style: TextStyle(
                color: Color(0xFFFFFFFF),
                fontSize: 60,
                fontWeight: FontWeight.w500
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFAFAE24),
                    disabledBackgroundColor: Color.fromARGB(255, 248, 5, 5), // Cor quando desabilitado
                    fixedSize: const Size(110,75),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    )
                  ),
                  onPressed: isEmpty ? null : decrement,
                  child: const Text(
                    'Sair',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFF031cf5),
                      fontWeight: FontWeight.w500
                    ),
                  ),
                ),
                
                const SizedBox(width: 40),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFAFAE24),
                    disabledBackgroundColor: Colors.red[400], // Cor quando desabilitado
                    fixedSize: const Size(110,75),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    )
                  ),
                  onPressed: isFull ? null : incremented,
                  child: const Text(
                    'Entrar',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFF031cf5),
                      fontWeight: FontWeight.w500
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}