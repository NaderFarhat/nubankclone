import 'package:flutter/material.dart';

class CreditCard extends StatelessWidget {
  final bool showData;

  const CreditCard({Key key, this.showData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.white,
        ),
        borderRadius: BorderRadius.all(Radius.circular(6)),
      ),
      height: 160,
      // color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: Icon(
                    Icons.credit_card,
                    color: Color(0xff7d7d7d),
                    size: 30.0,
                  ),
                ),
                Text(
                  'Cartão de Crédito',
                  style: TextStyle(fontSize: 18, color: Color(0xff7d7d7d)),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    'Fatura atual',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff7d7d7d),
                    ),
                  ),
                )
              ],
            ),
            showData
                ? Row(
                    children: [
                      Text(
                        "R\$ 0,00",
                        style: TextStyle(
                            fontSize: 32,
                            color: Color(0xff24a7ed),
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  )
                : Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: 22.0,
                        child: const DecoratedBox(
                          decoration:
                              const BoxDecoration(color: Color(0xfff5f5f5)),
                        ),
                      )
                    ],
                  ),
            showData
                ? Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: Row(
                      children: [
                        Text(
                          "Limite disponível ",
                          style:
                              TextStyle(fontSize: 12, color: Color(0xff747474)),
                        ),
                        Text(
                          "R\$ 3000,00",
                          style: TextStyle(
                              fontSize: 12,
                              color: Color(0xff125d36),
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  )
                : Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: 34.0,
                        child: const DecoratedBox(
                          decoration:
                              const BoxDecoration(color: Color(0xfff5f5f5)),
                        ),
                      )
                    ],
                  ),
          ],
        ),
      ),
    );
  }
}
