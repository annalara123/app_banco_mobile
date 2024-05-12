import 'package:app_banco_mobile/shared/tema.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

// ignore: must_be_immutable
class BottomNavBar extends StatelessWidget {
  void Function(int)? onTabeChange;
  BottomNavBar({super.key, required this.onTabeChange});

  @override
  Widget build(BuildContext context) {
    return GNav(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      backgroundColor: Tema().corAzulEscuro,
      onTabChange: (value) => onTabeChange!(value),
      activeColor: Tema().corMeioBranco,
      padding: const EdgeInsets.all(15),
      tabs: const [
        GButton(
          icon: Icons.home_filled,
        ),
        GButton(
          icon: Icons.pix,
        ),
        GButton(
          icon: Icons.price_check,
        ),
        GButton(
          icon: Icons.credit_card,
        ),
        GButton(
          icon: Icons.account_circle,
        ),
      ],
    );
  }
}
