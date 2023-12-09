import 'package:animate_gradient/animate_gradient.dart';
import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kalachakra/pages/DashboardPage.dart';
import 'package:lottie/lottie.dart';
import 'package:page_route_transition/page_route_transition.dart';

class FinancingPage extends StatefulWidget {
  const FinancingPage({super.key});

  @override
  State<FinancingPage> createState() => _FinancingPageState();
}

class _FinancingPageState extends State<FinancingPage> {
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
                  Colors.white,
                  Colors.white,
                  Colors.white,
                ],
                secondaryColors: const [
                  Colors.white,
                  Colors.white,
                  Colors.white,
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
                        padding: EdgeInsets.only(left: 0.0, right: 0.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            IconButton(
                              icon: const Icon(CupertinoIcons.arrow_left, size: 25, color: Color(0XFF24A896),),
                              onPressed: () {
                                PageRouteTransition.effect = TransitionEffect.rightToLeft;
                                PageRouteTransition.push(context, const DashboardPage());
                              },
                            ),
                            const Text(
                                'Home', style: TextStyle(
                                color: Color(0XFF24A896), fontSize: 16
                            )
                            ),
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
                            Text('Financing', style: TextStyle(fontSize: 22, color: Colors.black, fontWeight: FontWeight.w400)),
                            SizedBox(height: 10),
                            Text('Select a card based on pipeline, last update, & seller', style: TextStyle(fontSize: 16, color: Colors.black54)),
                          ]
                      )
                  ),
                  SizedBox(height: 20.0,),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Container(
                                width: 100,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                    border: Border.all(
                                        color: Colors.black,
                                        width: 1
                                    ),
                                    borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        bottomLeft: Radius.circular(10)
                                    ),
                                ),
                                child: const Center(
                                  child: Text('Listing', style: TextStyle(fontSize: 16, color: Colors.black)),
                                ),
                              ),
                              Container(
                                width: 110,
                                height: 60,
                                decoration: const BoxDecoration(
                                  color: Colors.transparent,
                                  border: BorderDirectional(
                                    end: BorderSide(color: Colors.black, width: 1),
                                    top: BorderSide(color: Colors.black, width: 1),
                                    bottom: BorderSide(color: Colors.black, width: 1),
                                  ),
                                ),
                                child: const Center(
                                  child: Text('Inspecting', style: TextStyle(fontSize: 16, color: Colors.black)),
                                ),
                              ),
                              Container(
                                width: 100,
                                height: 60,
                                decoration: const BoxDecoration(
                                  color: Colors.transparent,
                                  border: BorderDirectional(
                                    end: BorderSide(color: Colors.black, width: 1),
                                    top: BorderSide(color: Colors.black, width: 1),
                                    bottom: BorderSide(color: Colors.black, width: 1),
                                  ),
                                ),
                                child: const Center(
                                  child: Text('Visited', style: TextStyle(fontSize: 16, color: Colors.black)),
                                ),
                              ),
                              Container(
                                width: 100,
                                height: 60,
                                decoration: const BoxDecoration(
                                  color: Colors.transparent,
                                  border: BorderDirectional(
                                    end: BorderSide(color: Colors.black, width: 1),
                                    top: BorderSide(color: Colors.black, width: 1),
                                    bottom: BorderSide(color: Colors.black, width: 1),
                                  ),
                                ),
                                child: const Center(
                                  child: Text('Assigning surveyor', style: TextStyle(fontSize: 16, color: Colors.black,)),
                                ),
                              ),
                              Container(
                                width: 100,
                                height: 60,
                                decoration: const BoxDecoration(
                                  color: Colors.transparent,
                                  border: BorderDirectional(
                                    end: BorderSide(color: Colors.black, width: 1),
                                    top: BorderSide(color: Colors.black, width: 1),
                                    bottom: BorderSide(color: Colors.black, width: 1),
                                  ),
                                ),
                                child: const Center(
                                  child: Text('Plan', style: TextStyle(fontSize: 16, color: Colors.black)),
                                ),
                              ),
                              Container(
                                width: 120,
                                height: 60,
                                decoration: const BoxDecoration(
                                  color: Colors.transparent,
                                  border: BorderDirectional(
                                    end: BorderSide(color: Colors.black, width: 1),
                                    top: BorderSide(color: Colors.black, width: 1),
                                    bottom: BorderSide(color: Colors.black, width: 1),
                                  ),
                                ),
                                child: const Center(
                                  child: Text('Notifications', style: TextStyle(fontSize: 16, color: Colors.black)),
                                ),
                              ),
                              Container(
                                width: 120,
                                height: 60,
                                decoration: const BoxDecoration(
                                  color: Colors.transparent,
                                  border: BorderDirectional(
                                    end: BorderSide(color: Colors.black, width: 1),
                                    top: BorderSide(color: Colors.black, width: 1),
                                    bottom: BorderSide(color: Colors.black, width: 1),
                                  ),
                                ),
                                child: const Center(
                                  child: Text('Integrations', style: TextStyle(fontSize: 16, color: Colors.black)),
                                ),
                              ),
                              Container(
                                width: 100,
                                height: 60,
                                decoration: const BoxDecoration(
                                  color: Colors.transparent,
                                  border: BorderDirectional(
                                    end: BorderSide(color: Colors.black, width: 1),
                                    top: BorderSide(color: Colors.black, width: 1),
                                    bottom: BorderSide(color: Colors.black, width: 1),
                                  ),
                                ),
                                child: const Center(
                                  child: Text('API', style: TextStyle(fontSize: 16, color: Colors.black)),
                                ),
                              ),
                            ],
                          ),
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
