import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animate_gradient/animate_gradient.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:kalachakra/pages/DashboardPage.dart';
import 'package:kalachakra/pages/splashscreen.dart';
import 'package:kalachakra/pages/vehiclespecificationpage.dart';
import 'package:page_route_transition/page_route_transition.dart';
import 'package:lottie/lottie.dart';

class VehicleregistrationPage extends StatefulWidget {
  const VehicleregistrationPage({super.key});

  @override
  State<VehicleregistrationPage> createState() => _VehicleregistrationPageState();
}

class _VehicleregistrationPageState extends State<VehicleregistrationPage> {
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
                            Text('Registration Number *', style: TextStyle(fontSize: 22, color: Colors.black, fontWeight: FontWeight.w400)),
                            SizedBox(height: 10),
                            Text('Please insert vehicle registration number', style: TextStyle(fontSize: 16, color: Colors.black54)),
                          ]
                      )
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    width: double.infinity,
                    height: 150,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 150,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextFormField(
                                textAlign: TextAlign.center,
                                decoration: const InputDecoration(
                                  hintText: 'Vehicle Plate Number',
                                  border: OutlineInputBorder(),
                                  filled: true,
                                  fillColor: Colors.white,
                                ),
                              ),
                              SizedBox(height: 15.0),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 0.0),
                                child: BouncingWidget(
                                  duration: Duration(milliseconds: 100),
                                  scaleFactor: 1.5,
                                  onPressed: () {
                                    showDialog(
                                        context: context,
                                        builder: (context) => const CustomDialogWidget(),
                                    );
                                  },
                                  child: Container(
                                    width: double.infinity,
                                    height: 45,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: const Color(0XFF24A896),
                                    ),
                                    child: const Center(
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Next',
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
                  SizedBox(height: 20.0,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: Color(0XFFEAFBF8),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Lottie.asset(
                                    'assets/animations/dotgreen.json',
                                    width: 5,
                                    height: 5,
                                  ),
                                ),
                                SizedBox(height: 5.0,),
                                Image.asset('assets/connectorgrey.png'),
                              ],
                            ),
                            SizedBox(width: 10.0,),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Registration number',
                                  style: TextStyle(fontSize: 18, color: Color(0xFF1B7E71)),
                                ),
                                SizedBox(height: 5.0,),
                                Text(
                                  'Please insert vehicle registration number.',
                                  style: TextStyle(fontSize: 14, color: Color(0XFF24A896)),
                                ),
                              ],
                            ),
                          ]
                      ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: Color(0XFFF9FAFB),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: const Icon(
                                    CupertinoIcons.circle_filled,
                                    size: 10,
                                    color: Color(0xFFEAECF0),
                                  ),
                                ),
                                Image.asset('assets/connectorgrey.png'),
                              ],
                            ),
                            SizedBox(width: 10.0,),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Detail Information',
                                  style: TextStyle(fontSize: 18, color: Color(0xFF344054)),
                                ),
                                SizedBox(height: 5.0,),
                                Text(
                                  'Please insert vehicle detail information',
                                  style: TextStyle(fontSize: 14, color: Color(0XFF667085)),
                                ),
                              ],
                            ),
                          ]
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

// Dialog Widget
class CustomDialogWidget extends StatelessWidget {
  const CustomDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(60),
        ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0,),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Container(
                      width: 30,
                      height: 30,
                      decoration: const BoxDecoration(
                        color: Color(0xFFFEF0C7),
                        shape: BoxShape.circle,
                      ),
                      child: Lottie.asset('assets/animations/warninglottie.json'),
                    ),
                    const Spacer(),
                    IconButton(
                      icon: const Icon(
                        CupertinoIcons.xmark,
                        size: 25.0,
                        color: Colors.black45,
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                const Row(
                  children: [
                    Text(
                      'B 2323 SLI',
                      style: TextStyle(color: Colors.black, fontSize: 25),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                Row(
                  children: [
                    Flexible(
                      child: RichText(
                        text: const TextSpan(
                            text: 'Make sure that the number you put in is correct, because it’ll be ',
                            style: TextStyle(color: Colors.black45, fontSize: 14),
                            children: [
                              TextSpan(
                                  text: 'unreplaceable',
                                  style: TextStyle(color: Color(0XFFD92D20)),
                              ),
                              TextSpan(
                                  text: ' after you clicking the next button down below'
                              ),
                            ]
                        ),
                        softWrap: true,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20.0),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0.0),
                  child: Row(
                    children: [
                      BouncingWidget(
                        duration: Duration(milliseconds: 100),
                        scaleFactor: 1.5,
                        onPressed: () {
                          PageRouteTransition.effect = TransitionEffect.bottomToTop;
                          PageRouteTransition.push(context, const VehiclespecificationPage());
                        },
                          child: Container(
                            width: 280,
                            height: 45,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: const Color(0XFF24A896),
                            ),
                            child: const Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Next',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.0),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0.0),
                  child: Row(
                    children: [
                      BouncingWidget(
                        duration: Duration(milliseconds: 100),
                        scaleFactor: 1.5,
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                          child: Container(
                            width: 280,
                            height: 45,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.transparent,
                              border: Border.all(
                                color: Colors.black26,
                              ),
                            ),
                            child: const Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Cancel',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ],
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
      ),
    );
  }
}
