// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:app_banco_mobile/shared/tema.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AdicionarCartao extends StatefulWidget {
  const AdicionarCartao({super.key});

  @override
  State<AdicionarCartao> createState() => _AdicionarCartaoState();
}

class _AdicionarCartaoState extends State<AdicionarCartao> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        centerTitle: true,
        backgroundColor: Tema().corAzulEscuro,
        title: const Text(
          'Adicionar Cartão',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 50),
        child: Column(
          children: [
            TextField(
              cursorColor: Tema().corAzulEscuro,
              decoration: InputDecoration(
                labelStyle: TextStyle(color: Tema().corAzulEscuro),
                labelText: 'Número',
                hintText: 'Texto',
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
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 180,
                    child: TextField(
                      cursorColor: Tema().corAzulEscuro,
                      decoration: InputDecoration(
                        labelStyle: TextStyle(color: Tema().corAzulEscuro),
                        labelText: 'Validade',
                        hintText: 'Texto',
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
                  SizedBox(
                    width: 180,
                    child: TextField(
                      cursorColor: Tema().corAzulEscuro,
                      decoration: InputDecoration(
                        labelStyle: TextStyle(color: Tema().corAzulEscuro),
                        labelText: 'CVV',
                        hintText: 'Texto',
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
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: TextField(
                cursorColor: Tema().corAzulEscuro,
                decoration: InputDecoration(
                  labelStyle: TextStyle(color: Tema().corAzulEscuro),
                  labelText: 'Número',
                  hintText: 'Texto',
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
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Tema().corAzulEscuro,
                    ),
                    onPressed: () {},
                    child: Text(
                      'Salvar',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Tema().corAzulEscuro,
                    ),
                    onPressed: () {},
                    child: Text(
                      'Cancelar',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
