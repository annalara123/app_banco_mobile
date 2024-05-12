import 'package:app_banco_mobile/components/bottom_nav_bar.dart';
import 'package:app_banco_mobile/pages/cartoes_page.dart';
import 'package:app_banco_mobile/pages/extrato_page.dart';
import 'package:app_banco_mobile/pages/home_page_itens.dart';
import 'package:app_banco_mobile/pages/perfil_page.dart';
import 'package:app_banco_mobile/pages/pix_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _indexSelecionado = 0;

  void navigateBottomBar(int novoIndex) {
    setState(() {
      _indexSelecionado = novoIndex;
    });
  }

  final List _pages = [
    const HomePageItens(),
    const PixPage(),
    const ExtratoPage(),
    const CartoesPage(),
    const PerfilPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBar(
        onTabeChange: (index) => navigateBottomBar(index),
      ),
      body: _pages[_indexSelecionado],
    );
  }
}
