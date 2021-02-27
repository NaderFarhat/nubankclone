import 'package:flutter/material.dart';

import 'widgets/top_home.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _showData;

  @override
  void initState() {
    super.initState();
    _showData = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff8a05be),
        body: Stack(
          children: [
            TopHome(
              showData: _showData,
              onTap: () {
                setState(() {
                  _showData = !_showData;
                });
              },
            ),
            Positioned(
                top: 100,
                height: 450,
                // width: 300,
                left: 0,
                right: 0,
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        height: 450,
                        color: Colors.amber[600],
                        child: const Center(child: Text('Entry A')),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        height: 450,
                        color: Colors.amber[500],
                        child: const Center(child: Text('Entry B')),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        height: 450,
                        color: Colors.amber[100],
                        child: const Center(child: Text('Entry C')),
                      ),
                    ),
                  ],
                )),
            Positioned(
              bottom: 0 + MediaQuery.of(context).padding.bottom,
              left: 0,
              right: 0,
              height: 120,
              child: Container(
                color: Colors.red,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(width: 110, color: Colors.cyan),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(width: 110, color: Colors.cyan),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(width: 110, color: Colors.cyan),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(width: 110, color: Colors.cyan),
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
