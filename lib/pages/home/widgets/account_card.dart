import 'package:flutter/material.dart';

class AccountCard extends StatelessWidget {
  final bool showData;

  const AccountCard({Key key, this.showData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      color: Colors.black,
      child: Column(
        children: [
          Row(
            children: [
              Icon(
                Icons.monetization_on_outlined,
              ),
              Text(
                'Conta',
                style: TextStyle(fontSize: 12),
              )
            ],
          ),
          Row(
            children: [
              Text(
                'Saldo disponível',
                style: TextStyle(fontSize: 12),
              )
            ],
          ),
          showData
              ? Row(
                  children: [
                    Text(
                      "R\$ 0,00",
                      style: TextStyle(fontSize: 12),
                    )
                  ],
                )
              : Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: 42.0,
                      child: const DecoratedBox(
                        decoration: const BoxDecoration(color: Colors.red),
                      ),
                    )
                  ],
                ),
        ],
      ),
    );
  }
}
