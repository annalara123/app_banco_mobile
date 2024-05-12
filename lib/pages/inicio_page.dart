import 'package:app_banco_mobile/pages/cadastro_page.dart';
import 'package:app_banco_mobile/pages/login_page.dart';
import 'package:app_banco_mobile/shared/tema.dart';
import 'package:flutter/material.dart';

class InicioPage extends StatefulWidget {
  const InicioPage({super.key});

  @override
  State<InicioPage> createState() => _InicioPageState();
}

class _InicioPageState extends State<InicioPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Tema().corMeioBranco,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(Tema().logo),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Tema().corAzulEscuro,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => const CadastroPage())));
            },
            child: const Text(
              'Começar',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Já é usuário?'),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => const LoginPage()),
                    ),
                  );
                },
                child: Text(
                  'Faça login',
                  style: TextStyle(
                    color: Tema().corAzulEscuro,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
