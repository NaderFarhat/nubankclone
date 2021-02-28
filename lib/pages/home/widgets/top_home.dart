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
          color: Color(0xff8a05be),
          height: MediaQuery.of(context).size.height * .13,
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
          margin: EdgeInsets.only(top: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text(
                    'Olá, Nader',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
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
                              height: 40,
                              width: 40,
                              margin: const EdgeInsets.only(
                                  left: 10.0, right: 10.0),
                              decoration: BoxDecoration(
                                color: Color(0xff9824c7),
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
                            height: 40,
                            width: 40,
                            margin:
                                const EdgeInsets.only(left: 10.0, right: 10.0),
                            decoration: BoxDecoration(
                              color: Color(0xff9824c7),
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
