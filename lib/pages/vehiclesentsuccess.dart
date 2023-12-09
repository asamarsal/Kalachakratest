import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animate_gradient/animate_gradient.dart';
import 'package:kalachakra/pages/DashboardPage.dart';
import 'package:kalachakra/pages/vehicleregistrationpage.dart';
import 'package:lottie/lottie.dart';
import 'package:page_route_transition/page_route_transition.dart';

class VehiclesentsuccessPage extends StatefulWidget {
  const VehiclesentsuccessPage({super.key});

  @override
  State<VehiclesentsuccessPage> createState() => _VehiclesentsuccessPageState();
}

class _VehiclesentsuccessPageState extends State<VehiclesentsuccessPage> {
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    SizedBox(height: 40.0,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Lottie.asset(
                            'assets/animations/warninggreen.json',
                            width: 5,
                            height: 5,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30.0,),
                    const Padding(
                      padding: EdgeInsets.only(left: 0, right: 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Lead has been successfully',
                            style: TextStyle(fontSize: 24, color: Color(0xFF101828)),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10.0,),
                    const Padding(
                      padding: EdgeInsets.only(left: 0, right: 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'advertised',
                            style: TextStyle(fontSize: 24, color: Color(0xFF101828)),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20.0,),
                    const Padding(
                      padding: EdgeInsets.only(left: 0, right: 0),
                      child: Wrap(
                        alignment: WrapAlignment.center,
                        children: [
                          Text(
                            'Check your leads on the Home menu. If a problem occurs, please contact Customer Services.',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 16, color: Color(0xFF667085)),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30.0,),
                    BouncingWidget(
                      duration: Duration(milliseconds: 100),
                      scaleFactor: 1.5,
                      onPressed: () {
                        PageRouteTransition.effect = TransitionEffect.scale;
                        PageRouteTransition.push(context, const DashboardPage());
                      },
                      child: Container(
                        width: double.infinity,
                        height: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color(0XFF24A896),
                          border: Border.all(
                            color: Colors.transparent,
                          ),
                        ),
                        child: const Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Check Card',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30.0,),
                    Padding(
                      padding: EdgeInsets.only(left: 0, right: 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Want to submit another?',
                            style: TextStyle(fontSize: 14, color: Color(0xFF667085)),
                          ),
                          SizedBox(width: 5.0,),
                          GestureDetector(
                            onTap: () async {
                              PageRouteTransition.effect = TransitionEffect.leftToRight;
                              PageRouteTransition.push(context, const VehicleregistrationPage());
                            },
                            child: const Text(
                              'Click Here',
                              style: TextStyle(fontSize: 14, color: Color(0xFF1B7E71)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20.0,),
                    GestureDetector(
                      onTap: () async {
                        Navigator.pushAndRemoveUntil(
                          context,
                          PageRouteTransitionBuilder(page: const DashboardPage(), effect: TransitionEffect.scale),
                              (route) => false, // Kondisi di sini menentukan kapan stack halaman dihapus
                        );
                      },
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            CupertinoIcons.arrow_left,
                            color: Colors.black,
                            size: 18,
                          ),
                          SizedBox(width: 10.0,),
                          Text(
                            'Back to home',
                            style: TextStyle(fontSize: 14, color: Color(0xFF667085)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
