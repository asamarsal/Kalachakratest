import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animate_gradient/animate_gradient.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:kalachakra/pages/splashscreen.dart';
import 'package:kalachakra/pages/vehicleregistrationpage.dart';
import 'package:page_route_transition/page_route_transition.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: SafeArea(
              child: Stack(
                  children: [
                    AnimateGradient(
                      primaryColors: const [
                        Colors.blue,
                        Colors.blue,
                        Colors.blue,
                      ],
                      secondaryColors: const [
                        Colors.blue,
                        Colors.blue,
                        Colors.blue,
                      ],
                      child: Container(
                        decoration: const BoxDecoration(),
                      ),
                    ),
                    Column(
                      children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                                height: 60,
                                width: double.infinity,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  border: Border(
                                    bottom: BorderSide(
                                      color: Colors.black12,
                                      width: 1.0,
                                    ),
                                  ),
                                ),
                              child: Padding(
                                  padding: EdgeInsets.only(left: 10.0, right: 10.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(left: 0.0, right: 10.0),
                                          child: Image.asset('assets/logoyodacentral.png'),
                                        ),
                                        Spacer(),
                                        Icon(CupertinoIcons.bars, size: 40,)
                                      ],
                                    ),
                                ),
                              ),
                          ),
                        Container(
                            padding: EdgeInsets.symmetric(horizontal: 20.0),
                            width: double.infinity,
                            height: 100,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                            ),
                            child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Welcome Back, Muammar', style: TextStyle(fontSize: 22, color: Colors.black, fontWeight: FontWeight.w400)),
                                  SizedBox(height: 10),
                                  Text('Your leads summary and activity', style: TextStyle(fontSize: 16, color: Colors.black54)),
                                ]
                            )
                        ),
                        Container(
                            padding: EdgeInsets.symmetric(horizontal: 20.0),
                            width: double.infinity,
                            height: 45,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height : 40,
                                    decoration: const BoxDecoration(
                                      color: Colors.white,
                                      border: Border(
                                        bottom: BorderSide(
                                          color: Colors.green,
                                          width: 2.0,
                                        ),
                                      ),
                                    ),
                                    child: Text('Financing', style: TextStyle(fontSize: 18, color: Colors.green, fontWeight: FontWeight.w400)),
                                  ),
                                ]
                            )
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20.0),
                          width: double.infinity,
                          height: 120,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 120,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Open', style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.w400)),
                                    SizedBox(height: 5.0),
                                    Text('Leads in process', style: TextStyle(fontSize: 14, color: Colors.black54)),
                                    SizedBox(height: 10.0),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 0.0),
                                      child: BouncingWidget(
                                        duration: Duration(milliseconds: 100),
                                        scaleFactor: 1.5,
                                        onPressed: () {
                                          PageRouteTransition.effect = TransitionEffect.leftToRight;
                                          PageRouteTransition.push(context, const VehicleregistrationPage());
                                        },
                                        child: Container(
                                          width: 180,
                                          height: 40,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(8),
                                            color: const Color(0XFF24A896),
                                          ),
                                          child: const Center(
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Icon(
                                                  CupertinoIcons.plus,
                                                  size: 20.0,
                                                  color: Colors.white,
                                                ),
                                                SizedBox(width: 6),
                                                Text(
                                                  'New Financing Lead',
                                                  style: TextStyle(color: Colors.white),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
              ),
            ),
        ),
    );
  }
}