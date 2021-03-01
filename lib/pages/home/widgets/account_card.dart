import 'package:flutter/material.dart';

class AccountCard extends StatelessWidget {
  final bool showData;

  const AccountCard({Key key, this.showData}) : super(key: key);

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
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: Icon(
                    Icons.monetization_on_outlined,
                    color: Color(0xff7d7d7d),
                    size: 30.0,
                  ),
                ),
                Text(
                  'Conta',
                  style: TextStyle(fontSize: 18, color: Color(0xff7d7d7d)),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    'Saldo disponível',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff7d7d7d),
                    ),
                  ),
                )
              ],
            ),
            showData
                ? Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      children: [
                        Text(
                          "R\$ 0,00",
                          style: TextStyle(
                              fontSize: 36,
                              color: Color(0xff151515),
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  )
                : Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: 42.0,
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
