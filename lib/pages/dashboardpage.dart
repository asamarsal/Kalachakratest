import 'package:flutter/material.dart';
import 'package:animate_gradient/animate_gradient.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: SafeArea(
          child: Stack(
              children: [
                AnimateGradient(
                  primaryColors: const [
                    Color(0xFFFF6C22),
                    Color(0xFFFF6C22),
                    Color(0xFFFF6C22),
                  ],
                  secondaryColors: const [
                    Color(0xFFFF6C22),
                    Color(0xFFFF6C22),
                    Color(0xFFFF6C22),
                  ],
                  child: Container(
                    decoration: const BoxDecoration(),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                      height: 50,
                      width: 80,
                      color: Colors.transparent,
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 5.0, right: 5.0),
                            child: Image('assets/iconaplikasi.png'),
                          ),
                        ],
                      ),
                    ),
                ),
              ],
          )
        ),
    );
  }
}
