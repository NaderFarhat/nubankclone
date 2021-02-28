import 'package:flutter/material.dart';
import 'package:nubankclone/pages/home/widgets/account_card.dart';
import 'package:nubankclone/pages/home/widgets/credit_card.dart';
import 'package:nubankclone/pages/home/widgets/information_card.dart';
import 'package:nubankclone/pages/home/widgets/item_menu_bottom.dart';

import 'widgets/top_home.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _showData;

  @override
  void initState() {
    super.initState();
    _showData = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff8a05be),
        body: Stack(
          children: [
            TopHome(
              showData: _showData,
              onTap: () {
                setState(() {
                  _showData = !_showData;
                });
              },
            ),
            Positioned(
                top: 125,
                height: 450,
                // width: 300,
                left: 0,
                right: 0,
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: CreditCard(showData: _showData),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: AccountCard(showData: _showData),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: InformationCard(
                          icon: Icons.person_add_alt,
                          title: 'Rewards',
                          subTitle:
                              'Apague compras com pontos que nunca expiram.'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: InformationCard(
                          icon: Icons.person_add_alt,
                          title: 'Seguro de vida',
                          subTitle:
                              'Conheça Nubank Vida: um seguro simples e que cabe no bolso.'),
                    ),
                  ],
                )),
            Positioned(
              bottom: 0 + MediaQuery.of(context).padding.bottom,
              left: 0,
              right: 0,
              height: 120,
              child: Container(
                color: Color(0xff8a05be),
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: [
                    ItemMenuBottom(
                      icon: Icons.adjust_outlined,
                      title: 'Pix',
                    ),
                    ItemMenuBottom(
                      icon: Icons.money,
                      title: 'Pagar',
                    ),
                    ItemMenuBottom(
                      icon: Icons.person_add_alt,
                      title: 'Indicar amigos',
                    ),
                    ItemMenuBottom(
                      icon: Icons.monetization_on_rounded,
                      title: 'Transferir',
                    ),
                    ItemMenuBottom(
                      icon: Icons.money_off,
                      title: 'Depositar',
                    ),
                    ItemMenuBottom(
                      icon: Icons.attach_money_sharp,
                      title: 'Empréstimos',
                    ),
                    ItemMenuBottom(
                      icon: Icons.credit_card,
                      title: 'Cartão virtual',
                    ),
                    ItemMenuBottom(
                      icon: Icons.phone_android,
                      title: 'Recarga de celular',
                    ),
                    ItemMenuBottom(
                      icon: Icons.clear_all,
                      title: 'Ajustar limite',
                    ),
                    ItemMenuBottom(
                      icon: Icons.lock_outline,
                      title: 'Bloquear cartão',
                    ),
                    ItemMenuBottom(
                      icon: Icons.monetization_on_outlined,
                      title: 'Cobrar',
                    ),
                    ItemMenuBottom(
                      icon: Icons.money,
                      title: 'Doação',
                    ),
                    ItemMenuBottom(
                      icon: Icons.help_outline,
                      title: 'Me ajuda',
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
