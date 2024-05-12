import 'package:app_banco_mobile/pages/home_page.dart';
import 'package:app_banco_mobile/shared/tema.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _nomeController = TextEditingController();
  final TextEditingController _senhaController = TextEditingController();

  bool ocultarSenha = true;
  void mostrarSenha() {
    setState(() {
      ocultarSenha = !ocultarSenha;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        centerTitle: true,
        backgroundColor: Tema().corAzulEscuro,
        title: const Text(
          'login',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Image.asset(
                Tema().logo,
                height: 250,
              ),
              TextField(
                cursorColor: Tema().corAzulEscuro,
                controller: _nomeController,
                decoration: InputDecoration(
                  labelStyle: TextStyle(color: Tema().corAzulEscuro),
                  labelText: 'Nome',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Tema().corAzulEscuro,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 20),
                child: TextField(
                  cursorColor: Tema().corAzulEscuro,
                  obscureText: true,
                  controller: _senhaController,
                  decoration: InputDecoration(
                    labelStyle: TextStyle(color: Tema().corAzulEscuro),
                    labelText: 'Senha',
                    suffixIcon: IconButton(
                      onPressed: mostrarSenha,
                      icon: Icon(ocultarSenha
                          ? Icons.visibility
                          : Icons.visibility_off),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Tema().corAzulEscuro,
                      ),
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Tema().corAzulEscuro,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  minimumSize: const Size(double.infinity, 50),
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => const HomePage()),
                    ),
                  );
                },
                child: const Text(
                  'Logar',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
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
