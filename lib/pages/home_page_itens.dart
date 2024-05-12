// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:app_banco_mobile/models/lista_saldo.dart';
import 'package:flutter/material.dart';
import '../shared/tema.dart';

class HomePageItens extends StatefulWidget {
  const HomePageItens({super.key});

  @override
  State<HomePageItens> createState() => _HomePageItensState();
}

class _HomePageItensState extends State<HomePageItens> {
  final ListaSaldo listaSaldo = ListaSaldo();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        centerTitle: true,
        backgroundColor: Tema().corAzulEscuro,
        title: Text(
          'Home',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Tema().corAzulEscuro,
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Tema().corAzulEscuro, Tema().corAzulClaro],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Saldo em conta',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'R\$ 900.00',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
