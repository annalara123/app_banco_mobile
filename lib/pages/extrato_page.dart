import 'package:app_banco_mobile/shared/tema.dart';
import 'package:flutter/material.dart';

class ExtratoPage extends StatefulWidget {
  const ExtratoPage({super.key});

  @override
  State<ExtratoPage> createState() => _ExtratoPageState();
}

class _ExtratoPageState extends State<ExtratoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        centerTitle: true,
        backgroundColor: Tema().corAzulEscuro,
        title: const Text(
          'Extrato',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Pix enviado',
                  style: TextStyle(
                    color: Tema().corAzulEscuro,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '-R\$ 20.00',
                  style: TextStyle(
                    color: Tema().corAzulEscuro,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                'Farmacia BomDia',
                style: TextStyle(fontSize: 16),
              ),
            ),
            const Text(
              '13:30',
              style: TextStyle(fontSize: 16),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Fatura Cartão 1',
                    style: TextStyle(
                      color: Tema().corAzulEscuro,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '-R\$ 400.40',
                    style: TextStyle(
                      color: Tema().corAzulEscuro,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                'Farmacia BomDia',
                style: TextStyle(fontSize: 16),
              ),
            ),
            const Text(
              '13:30',
              style: TextStyle(fontSize: 16),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Salário',
                    style: TextStyle(
                      color: Tema().corAzulEscuro,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '+R\$ 430.40',
                    style: TextStyle(
                      color: Tema().corAzulEscuro,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                'Empresa',
                style: TextStyle(fontSize: 16),
              ),
            ),
            const Text(
              '8:30',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
