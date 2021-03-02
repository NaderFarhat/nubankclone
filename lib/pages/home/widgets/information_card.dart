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
      height: 170,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.white,
        ),
        borderRadius: BorderRadius.all(Radius.circular(6)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Icon(
                  icon,
                  color: Color(0xff6d0f85),
                  size: 38.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    title,
                    style: TextStyle(
                      fontSize: 26,
                      color: Color(0xff6d0f85),
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Text(
                      subTitle,
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff7d7d7d),
                      ),
                    ),
                  ),
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
      ),
    );
  }
}
