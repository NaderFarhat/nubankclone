import 'package:flutter/material.dart';

class InformationCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subTitle;

  const InformationCard({Key key, this.icon, this.title, this.subTitle})
      : super(key: key);

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
                icon,
              ),
              Text(
                title,
                style: TextStyle(fontSize: 12),
              )
            ],
          ),
          Row(
            children: [
              Text(
                subTitle,
                style: TextStyle(fontSize: 12),
              )
            ],
          ),
          Row(
            children: [
              OutlinedButton(
                onPressed: () {
                  print('Received click');
                },
                child: Text('conhecer'),
                style: OutlinedButton.styleFrom(
                  primary: Color(0xff8a05be),
                  side: BorderSide(color: Color(0xff8a05be), width: 1),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
