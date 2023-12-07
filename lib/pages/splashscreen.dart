import 'package:animate_gradient/animate_gradient.dart';
import 'package:flutter/material.dart';
import 'package:kalachakra/pages/DashboardPage.dart';
import 'package:typewritertext/typewritertext.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToDashboard();
  }

  _navigateToDashboard() async {
    await Future.delayed(Duration(milliseconds: 3000));
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => DashboardPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
            children: [
              AnimateGradient(
                primaryColors: const [
                  Color(0xFFFF6C22),
                  Color(0xFFFF915E),
                  Color(0xFFFF6C22),
                ],
                secondaryColors: const [
                  Colors.white,
                  Color(0xFFFF6C22),
                  Colors.white,
                ],
                child: Container(
                  decoration: const BoxDecoration(),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 60,
                  width: double.infinity,
                  child: const Padding(
                    padding: EdgeInsets.only(left: 20.0, right: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TypeWriterText(
                          text: Text('Kalachakra Consulting', style: TextStyle(fontSize: 30, color: Colors.white)),
                          duration: Duration(milliseconds: 50),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
      ),
    );
  }
}
