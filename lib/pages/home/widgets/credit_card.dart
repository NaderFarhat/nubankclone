import 'package:flutter/material.dart';

class CreditCard extends StatelessWidget {
  final bool showData;

  const CreditCard({Key key, this.showData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Colors.black,
      child: Column(
        children: [
          Row(
            children: [
              Icon(
                Icons.credit_card,
              ),
              Text(
                'Cartão de Crédito',
                style: TextStyle(fontSize: 12),
              )
            ],
          ),
          Row(
            children: [
              Text(
                'Fatura atual',
                style: TextStyle(fontSize: 12),
              )
            ],
          ),
          Row(
            children: [
              Text(
                "R\$ 0,00",
                style: TextStyle(fontSize: 12),
              )
            ],
          ),
          Row(
            children: [
              Text(
                "Limite disponível ",
                style: TextStyle(fontSize: 12),
              ),
              Text(
                "R\$ 3000,00",
                style: TextStyle(fontSize: 12),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
