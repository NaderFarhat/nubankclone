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
        GestureDetector(
          onTap: onTap,
          child: Container(
            color: Colors.red,
            height: MediaQuery.of(context).size.height * .1,
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Olá, Nader',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Icon(showData
                    ? Icons.visibility_outlined
                    : Icons.visibility_off_outlined),
                Icon(Icons.settings)
              ],
            ),
          ),
        ),
      ],
    );
  }
}
