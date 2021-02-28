import 'package:flutter/material.dart';

class TopHome extends StatelessWidget {
  final bool showData;
  final VoidCallback onTap;

  const TopHome({Key key, this.showData, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).padding.top,
        ),
        Container(
          color: Colors.red,
          height: MediaQuery.of(context).size.height * .1,
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text(
                    'Olá, Nader',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Column(
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: onTap,
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ),
                              child: Icon(showData
                                  ? Icons.visibility_outlined
                                  : Icons.visibility_off_outlined),
                            )
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                            ),
                            child: Icon(Icons.settings),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
