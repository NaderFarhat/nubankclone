import 'package:flutter/material.dart';

class ItemMenuBottom extends StatelessWidget {
  final IconData icon;
  final String title;

  const ItemMenuBottom({Key key, this.icon, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(top: 8.0, left: 4.0, right: 8.0, bottom: 16.0),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(icon),
              Text(
                title,
                style: TextStyle(fontSize: 12),
              )
            ],
          ),
        ),
        width: 80,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5), color: Colors.white24),
      ),
    );
  }
}
