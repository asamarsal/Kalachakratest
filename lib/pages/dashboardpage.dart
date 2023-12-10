import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animate_gradient/animate_gradient.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:kalachakra/pages/financingpage.dart';
import 'package:kalachakra/pages/splashscreen.dart';
import 'package:kalachakra/pages/vehicleregisteredpage.dart';
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
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.0),
                          child: Divider(
                            color: Color(0xFFEAECF0),
                            thickness: 1.0,
                          ),
                        ),
                        Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 60,
                                  width: double.infinity,
                                  decoration: const BoxDecoration(
                                    color: Colors.transparent,
                                  ),
                                  child: InkWell(
                                    onTap: () {
                                      // Navigasi ke FinancingPage() ketika container diklik
                                      PageRouteTransition.effect = TransitionEffect.leftToRight;
                                      PageRouteTransition.push(context, const FinancingPage());
                                    },
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 15.0, right: 20.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Image.asset(
                                            'assets/iconhijau.png',
                                            height: 60,
                                            width: 60,
                                          ),
                                          const Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Listing',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color(0xFF344504),
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              SizedBox(height: 5.0,),
                                              Text(
                                                'Customer service',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color(0xFF667085),
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Spacer(),
                                          const Text(
                                            '2,420',
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Color(0XFF667085),
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                                  child: Divider(
                                    color: Color(0xFFEAECF0),
                                    thickness: 1.0,
                                  ),
                                ),
                                Container(
                                  height: 60,
                                  width: double.infinity,
                                  decoration: const BoxDecoration(
                                    color: Colors.transparent,
                                  ),
                                  child: InkWell(
                                    onTap: () {
                                      // Navigasi ke FinancingPage() ketika container diklik
                                      PageRouteTransition.effect = TransitionEffect.leftToRight;
                                      PageRouteTransition.push(context, const FinancingPage());
                                    },
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 15.0,right: 20.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Image.asset(
                                            'assets/iconhijau.png',
                                            height: 60,
                                            width: 60,
                                          ),
                                          const Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Inspecting',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color(0xFF344504),
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              SizedBox(height: 5.0,),
                                              Text(
                                                'Marketing officer',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color(0xFF667085),
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Spacer(),
                                          const Text(
                                            '1,210',
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Color(0XFF667085),
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                                  child: Divider(
                                    color: Color(0xFFEAECF0),
                                    thickness: 1.0,
                                  ),
                                ),
                                Container(
                                  height: 60,
                                  width: double.infinity,
                                  decoration: const BoxDecoration(
                                    color: Colors.transparent,
                                  ),
                                  child: InkWell(
                                    onTap: () {
                                        // Navigasi ke FinancingPage() ketika container diklik
                                        PageRouteTransition.effect = TransitionEffect.leftToRight;
                                        PageRouteTransition.push(context, const FinancingPage());
                                      },
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 15.0,right: 20.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Image.asset(
                                            'assets/iconhijau.png',
                                            height: 60,
                                            width: 60,
                                          ),
                                          const Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Visited',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color(0xFF344504),
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              SizedBox(height: 5.0,),
                                              Text(
                                                'Marketing officer',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color(0xFF667085),
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Spacer(),
                                          const Text(
                                            '20',
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Color(0XFF667085),
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                                  child: Divider(
                                    color: Color(0xFFEAECF0),
                                    thickness: 1.0,
                                  ),
                                ),
                                Container(
                                  height: 60,
                                  width: double.infinity,
                                  decoration: const BoxDecoration(
                                    color: Colors.transparent,
                                  ),
                                  child: InkWell(
                                      onTap: () {
                                        // Navigasi ke FinancingPage() ketika container diklik
                                        PageRouteTransition.effect = TransitionEffect.leftToRight;
                                        PageRouteTransition.push(context, const FinancingPage());
                                      },
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 15.0,right: 20.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Image.asset(
                                            'assets/iconhijau.png',
                                            height: 60,
                                            width: 60,
                                          ),
                                          const Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Assigning surveyor',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color(0xFF344504),
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              SizedBox(height: 5.0,),
                                              Text(
                                                'Marketing head',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color(0xFF667085),
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Spacer(),
                                          const Text(
                                            '2,420',
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Color(0XFF667085),
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                                  child: Divider(
                                    color: Color(0xFFEAECF0),
                                    thickness: 1.0,
                                  ),
                                ),
                                Container(
                                  height: 60,
                                  width: double.infinity,
                                  decoration: const BoxDecoration(
                                    color: Colors.transparent,
                                  ),
                                  child: InkWell(
                                      onTap: () {
                                        // Navigasi ke FinancingPage() ketika container diklik
                                        PageRouteTransition.effect = TransitionEffect.leftToRight;
                                        PageRouteTransition.push(context, const FinancingPage());
                                      },
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 15.0,right: 20.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Image.asset(
                                            'assets/iconhijau.png',
                                            height: 60,
                                            width: 60,
                                          ),
                                          const Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Surveying',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color(0xFF344504),
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              SizedBox(height: 5.0,),
                                              Text(
                                                'Credit officer',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color(0xFF667085),
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Spacer(),
                                          const Text(
                                            '1,210',
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Color(0XFF667085),
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                                  child: Divider(
                                    color: Color(0xFFEAECF0),
                                    thickness: 1.0,
                                  ),
                                ),
                                Container(
                                  height: 60,
                                  width: double.infinity,
                                  decoration: const BoxDecoration(
                                    color: Colors.transparent,
                                  ),
                                  child: InkWell(
                                      onTap: () {
                                        // Navigasi ke FinancingPage() ketika container diklik
                                        PageRouteTransition.effect = TransitionEffect.leftToRight;
                                        PageRouteTransition.push(context, const FinancingPage());
                                      },
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 15.0,right: 20.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Image.asset(
                                            'assets/iconhijau.png',
                                            height: 60,
                                            width: 60,
                                          ),
                                          const Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Approval',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color(0xFF344504),
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              SizedBox(height: 5.0,),
                                              Text(
                                                'Marketing officer',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color(0xFF667085),
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Spacer(),
                                          const Text(
                                            '20',
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Color(0XFF667085),
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                                  child: Divider(
                                    color: Color(0xFFEAECF0),
                                    thickness: 1.0,
                                  ),
                                ),
                                SizedBox(height: 10.0,),
                                //Closed
                                Container(
                                  height: 60,
                                  decoration: const BoxDecoration(
                                    color: Colors.transparent,
                                  ),
                                    child: const Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('Closed', style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.w400)),
                                            SizedBox(height: 5.0),
                                            Text('Leads complete', style: TextStyle(fontSize: 14, color: Colors.black54)),
                                            SizedBox(height: 10.0),
                                          ],
                                        ),
                                    ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                                  child: Divider(
                                    color: Color(0xFFEAECF0),
                                    thickness: 1.0,
                                  ),
                                ),
                                Container(
                                  height: 60,
                                  width: double.infinity,
                                  decoration: const BoxDecoration(
                                    color: Colors.transparent,
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 25.0,right: 20.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Image.asset(
                                          'assets/iconbiru.png',
                                          height: 40,
                                          width: 40,
                                        ),
                                        SizedBox(width: 10.0,),
                                        const Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Purchasing order',
                                              style: TextStyle(
                                                fontSize: 14,
                                                color: Color(0xFF344504),
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            SizedBox(height: 5.0,),
                                            Text(
                                              'Marketing officer',
                                              style: TextStyle(
                                                fontSize: 14,
                                                color: Color(0xFF667085),
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Spacer(),
                                        const Text(
                                          '2,420',
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Color(0XFF667085),
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                                  child: Divider(
                                    color: Color(0xFFEAECF0),
                                    thickness: 1.0,
                                  ),
                                ),
                                Container(
                                  height: 60,
                                  width: double.infinity,
                                  decoration: const BoxDecoration(
                                    color: Colors.transparent,
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 25.0,right: 20.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Image.asset(
                                          'assets/iconbiru.png',
                                          height: 40,
                                          width: 40,
                                        ),
                                        SizedBox(width: 10.0,),
                                        const Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Rejected',
                                              style: TextStyle(
                                                fontSize: 14,
                                                color: Color(0xFF344504),
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            SizedBox(height: 5.0,),
                                            Text(
                                              'Marketing officer',
                                              style: TextStyle(
                                                fontSize: 14,
                                                color: Color(0xFF667085),
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Spacer(),
                                        const Text(
                                          '1,210',
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Color(0XFF667085),
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                                  child: Divider(
                                    color: Color(0xFFEAECF0),
                                    thickness: 1.0,
                                  ),
                                ),
                                Container(
                                  height: 60,
                                  width: double.infinity,
                                  decoration: const BoxDecoration(
                                    color: Colors.transparent,
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 25.0,right: 20.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Image.asset(
                                          'assets/iconbiru.png',
                                          height: 40,
                                          width: 40,
                                        ),
                                        SizedBox(width: 10.0,),
                                        const Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Unit not available',
                                              style: TextStyle(
                                                fontSize: 14,
                                                color: Color(0xFF344504),
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            SizedBox(height: 5.0,),
                                            Text(
                                              'Marketing officer',
                                              style: TextStyle(
                                                fontSize: 14,
                                                color: Color(0xFF667085),
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Spacer(),
                                        const Text(
                                          '20',
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Color(0XFF667085),
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                ]
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