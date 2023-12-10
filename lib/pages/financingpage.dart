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
  bool isListingPressed = false;
  bool isInspectingPressed = false;
  bool isVisitedPressed = false;
  bool isAssigningPressed = false;
  bool isPlanPressed = false;
  bool isNotificationsPressed = false;
  bool isIntegrationsPressed = false;
  bool isApiPressed = false;

  Future<void> onRefresh() async {
    // Tambahkan logika untuk memuat data baru atau tindakan yang diperlukan saat refresh
    await Future.delayed(Duration(seconds: 1)); // Contoh penundaan 2 detik
  }

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
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isListingPressed = !isListingPressed;
                                  });
                                },
                                child: Container(
                                  width: 100,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    color: isListingPressed ? Color(0XFFD0D5DD) : Colors.transparent,
                                    border: Border.all(
                                      color: Color(0XFFD0D5DD),
                                      width: 1,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      bottomLeft: Radius.circular(10),
                                    ),
                                  ),
                                  child: const Center(
                                    child: Text('Listing', style: TextStyle(fontSize: 14, color: Colors.black)),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isInspectingPressed = !isInspectingPressed;
                                  });
                                },
                                child: Container(
                                  width: 110,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    color: isInspectingPressed ? Color(0XFFD0D5DD) : Colors.transparent,
                                    border: const BorderDirectional(
                                      end: BorderSide(color: Color(0XFFD0D5DD), width: 1),
                                      top: BorderSide(color: Color(0XFFD0D5DD), width: 1),
                                      bottom: BorderSide(color: Color(0XFFD0D5DD), width: 1),
                                    ),
                                  ),
                                  child: const Center(
                                    child: Text('Inspecting', style: TextStyle(fontSize: 14, color: Colors.black)),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isVisitedPressed = !isVisitedPressed;
                                  });
                                },
                                child : Container(
                                  width: 100,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    color: isVisitedPressed ? Color(0XFFD0D5DD) : Colors.transparent,
                                    border: const BorderDirectional(
                                      end: BorderSide(color: Color(0XFFD0D5DD), width: 1),
                                      top: BorderSide(color: Color(0XFFD0D5DD), width: 1),
                                      bottom: BorderSide(color: Color(0XFFD0D5DD), width: 1),
                                    ),
                                  ),
                                  child: const Center(
                                    child: Text('Visited', style: TextStyle(fontSize: 14, color: Colors.black)),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isAssigningPressed = !isAssigningPressed;
                                  });
                                },
                                  child : Container(
                                    width: 180,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      color: isAssigningPressed ? Color(0XFFD0D5DD) : Colors.transparent,
                                      border: const BorderDirectional(
                                        end: BorderSide(color: Color(0XFFD0D5DD), width: 1),
                                        top: BorderSide(color: Color(0XFFD0D5DD), width: 1),
                                        bottom: BorderSide(color: Color(0XFFD0D5DD), width: 1),
                                      ),
                                    ),
                                    child: const Center(
                                      child: Text('Assigning surveyor', style: TextStyle(fontSize: 14, color: Colors.black,)),
                                    ),
                                  ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isPlanPressed = !isPlanPressed;
                                  });
                                },
                                child : Container(
                                  width: 100,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    color: isPlanPressed ? Color(0XFFD0D5DD) : Colors.transparent,
                                    border: const BorderDirectional(
                                      end: BorderSide(color: Color(0XFFD0D5DD), width: 1),
                                      top: BorderSide(color: Color(0XFFD0D5DD), width: 1),
                                      bottom: BorderSide(color: Color(0XFFD0D5DD), width: 1),
                                    ),
                                  ),
                                  child: const Center(
                                    child: Text('Plan', style: TextStyle(fontSize: 14, color: Colors.black)),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isNotificationsPressed = !isNotificationsPressed;
                                  });
                                },
                                child: Container(
                                  width: 120,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    color: isNotificationsPressed ? Color(0XFFD0D5DD) : Colors.transparent,
                                    border: const BorderDirectional(
                                      end: BorderSide(color: Color(0XFFD0D5DD), width: 1),
                                      top: BorderSide(color: Color(0XFFD0D5DD), width: 1),
                                      bottom: BorderSide(color: Color(0XFFD0D5DD), width: 1),
                                    ),
                                  ),
                                  child: const Center(
                                    child: Text('Notifications', style: TextStyle(fontSize: 14, color: Colors.black)),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isIntegrationsPressed = !isIntegrationsPressed;
                                  });
                                },
                                child : Container(
                                  width: 120,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    color: isIntegrationsPressed ? Color(0XFFD0D5DD) : Colors.transparent,
                                    border: const BorderDirectional(
                                      end: BorderSide(color: Color(0XFFD0D5DD), width: 1),
                                      top: BorderSide(color: Color(0XFFD0D5DD), width: 1),
                                      bottom: BorderSide(color: Color(0XFFD0D5DD), width: 1),
                                    ),
                                  ),
                                  child: const Center(
                                    child: Text('Integrations', style: TextStyle(fontSize: 14, color: Colors.black)),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      isApiPressed = !isApiPressed;
                                    });
                                  },
                                  child : Container(
                                    width: 100,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      color: isApiPressed ? Color(0XFFD0D5DD) : Colors.transparent,
                                      border: const BorderDirectional(
                                        end: BorderSide(color: Color(0XFFD0D5DD), width: 1),
                                        top: BorderSide(color: Color(0XFFD0D5DD), width: 1),
                                        bottom: BorderSide(color: Color(0XFFD0D5DD), width: 1),
                                      ),
                                    ),
                                    child: const Center(
                                      child: Text('API', style: TextStyle(fontSize: 14, color: Colors.black)),
                                    ),
                                  ),
                              ),
                            ],
                          ),
                        ),
                      ),
                  SizedBox(height: 20.0,),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Divider(
                      color: Color(0xFFEAECF0),
                      thickness: 2.0,
                    ),
                  ),
                  Expanded(
                    child: RefreshIndicator(
                      onRefresh: onRefresh,
                      color: Colors.white,
                      backgroundColor: Colors.blue,
                        child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(height: 30.0,),
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                                    child: Container(
                                      height: 80,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        border: Border.all(
                                          color: Color(0XFFEAECF0),
                                          width: 1.0,
                                        ),
                                        borderRadius: BorderRadius.circular(10.0),
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
                                                'assets/logomobil/suzuki.png',
                                                height: 40,
                                                width: 40,
                                              ),
                                              SizedBox(width: 10.0,),
                                              const Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Text(
                                                        'Carry 2008',
                                                        style: TextStyle(
                                                          fontSize: 14,
                                                          color: Color(0xFF101828),
                                                          fontWeight: FontWeight.w500,
                                                        ),
                                                      ),
                                                      SizedBox(width: 10.0,),
                                                      Text(
                                                        '#P912UH',
                                                        style: TextStyle(
                                                          fontSize: 14,
                                                          color: Color(0xFF1B7E71),
                                                          fontWeight: FontWeight.w500,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(height: 5.0,),
                                                  Text(
                                                    'Sumber makmur jaya',
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                      color: Color(0xFF667085),
                                                      fontWeight: FontWeight.w400,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10.0,),
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                                    child: Container(
                                      height: 80,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        border: Border.all(
                                          color: Color(0XFFEAECF0),
                                          width: 1.0,
                                        ),
                                        borderRadius: BorderRadius.circular(10.0),
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
                                                'assets/logomobil/mitsubishi.png',
                                                height: 40,
                                                width: 40,
                                              ),
                                              SizedBox(width: 10.0,),
                                              const Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Text(
                                                        'Colt 2018',
                                                        style: TextStyle(
                                                          fontSize: 14,
                                                          color: Color(0xFF101828),
                                                          fontWeight: FontWeight.w500,
                                                        ),
                                                      ),
                                                      SizedBox(width: 10.0,),
                                                      Text(
                                                        '#P912UH',
                                                        style: TextStyle(
                                                          fontSize: 14,
                                                          color: Color(0xFF1B7E71),
                                                          fontWeight: FontWeight.w500,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(height: 5.0,),
                                                  Text(
                                                    'Agung motors',
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                      color: Color(0xFF667085),
                                                      fontWeight: FontWeight.w400,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10.0,),
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                                    child: Container(
                                      height: 80,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        border: Border.all(
                                          color: Color(0XFFEAECF0),
                                          width: 1.0,
                                        ),
                                        borderRadius: BorderRadius.circular(10.0),
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
                                                'assets/logomobil/mitsubishi.png',
                                                height: 40,
                                                width: 40,
                                              ),
                                              SizedBox(width: 10.0,),
                                              const Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Text(
                                                        'Colt 2012',
                                                        style: TextStyle(
                                                          fontSize: 14,
                                                          color: Color(0xFF101828),
                                                          fontWeight: FontWeight.w500,
                                                        ),
                                                      ),
                                                      SizedBox(width: 10.0,),
                                                      Text(
                                                        '#P912UH',
                                                        style: TextStyle(
                                                          fontSize: 14,
                                                          color: Color(0xFF1B7E71),
                                                          fontWeight: FontWeight.w500,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(height: 5.0,),
                                                  Text(
                                                    'Showroom bandung',
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                      color: Color(0xFF667085),
                                                      fontWeight: FontWeight.w400,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10.0,),
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                                    child: Container(
                                      height: 80,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        border: Border.all(
                                          color: Color(0XFFEAECF0),
                                          width: 1.0,
                                        ),
                                        borderRadius: BorderRadius.circular(10.0),
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
                                                'assets/logomobil/mitsubishi.png',
                                                height: 40,
                                                width: 40,
                                              ),
                                              SizedBox(width: 10.0,),
                                              const Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Text(
                                                        'Colt 2011',
                                                        style: TextStyle(
                                                          fontSize: 14,
                                                          color: Color(0xFF101828),
                                                          fontWeight: FontWeight.w500,
                                                        ),
                                                      ),
                                                      SizedBox(width: 10.0,),
                                                      Text(
                                                        '#P912UH',
                                                        style: TextStyle(
                                                          fontSize: 14,
                                                          color: Color(0xFF1B7E71),
                                                          fontWeight: FontWeight.w500,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(height: 5.0,),
                                                  Text(
                                                    'Automotors',
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                      color: Color(0xFF667085),
                                                      fontWeight: FontWeight.w400,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10.0,),
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                                    child: Container(
                                      height: 80,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        border: Border.all(
                                          color: Color(0XFFEAECF0),
                                          width: 1.0,
                                        ),
                                        borderRadius: BorderRadius.circular(10.0),
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
                                                'assets/logomobil/mitsubishi.png',
                                                height: 40,
                                                width: 40,
                                              ),
                                              SizedBox(width: 10.0,),
                                              const Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Text(
                                                        'Colt 2010',
                                                        style: TextStyle(
                                                          fontSize: 14,
                                                          color: Color(0xFF101828),
                                                          fontWeight: FontWeight.w500,
                                                        ),
                                                      ),
                                                      SizedBox(width: 10.0,),
                                                      Text(
                                                        '#P912UH',
                                                        style: TextStyle(
                                                          fontSize: 14,
                                                          color: Color(0xFF1B7E71),
                                                          fontWeight: FontWeight.w500,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(height: 5.0,),
                                                  Text(
                                                    'Toko mobil bandung',
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                      color: Color(0xFF667085),
                                                      fontWeight: FontWeight.w400,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10.0,),
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                                    child: Container(
                                      height: 80,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        border: Border.all(
                                          color: Color(0XFFEAECF0),
                                          width: 1.0,
                                        ),
                                        borderRadius: BorderRadius.circular(10.0),
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
                                                'assets/logomobil/mitsubishi.png',
                                                height: 40,
                                                width: 40,
                                              ),
                                              SizedBox(width: 10.0,),
                                              const Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Text(
                                                        'Colt 2002',
                                                        style: TextStyle(
                                                          fontSize: 14,
                                                          color: Color(0xFF101828),
                                                          fontWeight: FontWeight.w500,
                                                        ),
                                                      ),
                                                      SizedBox(width: 10.0,),
                                                      Text(
                                                        '#P912UH',
                                                        style: TextStyle(
                                                          fontSize: 14,
                                                          color: Color(0xFF1B7E71),
                                                          fontWeight: FontWeight.w500,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(height: 5.0,),
                                                  Text(
                                                    'Abadi jaya cars',
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                      color: Color(0xFF667085),
                                                      fontWeight: FontWeight.w400,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10.0,),
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                                    child: Container(
                                      height: 80,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        border: Border.all(
                                          color: Color(0XFFEAECF0),
                                          width: 1.0,
                                        ),
                                        borderRadius: BorderRadius.circular(10.0),
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
                                                'assets/logomobil/mitsubishi.png',
                                                height: 40,
                                                width: 40,
                                              ),
                                              SizedBox(width: 10.0,),
                                              const Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Text(
                                                        'Colt 2002',
                                                        style: TextStyle(
                                                          fontSize: 14,
                                                          color: Color(0xFF101828),
                                                          fontWeight: FontWeight.w500,
                                                        ),
                                                      ),
                                                      SizedBox(width: 10.0,),
                                                      Text(
                                                        '#P912UH',
                                                        style: TextStyle(
                                                          fontSize: 14,
                                                          color: Color(0xFF1B7E71),
                                                          fontWeight: FontWeight.w500,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(height: 5.0,),
                                                  Text(
                                                    'Sumber makmur jaya',
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                      color: Color(0xFF667085),
                                                      fontWeight: FontWeight.w400,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10.0,),
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                                    child: Container(
                                      height: 80,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        border: Border.all(
                                          color: Color(0XFFEAECF0),
                                          width: 1.0,
                                        ),
                                        borderRadius: BorderRadius.circular(10.0),
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
                                                'assets/logomobil/isuzu.png',
                                                height: 40,
                                                width: 40,
                                              ),
                                              SizedBox(width: 10.0,),
                                              const Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Text(
                                                        'Elf 2007',
                                                        style: TextStyle(
                                                          fontSize: 14,
                                                          color: Color(0xFF101828),
                                                          fontWeight: FontWeight.w500,
                                                        ),
                                                      ),
                                                      SizedBox(width: 10.0,),
                                                      Text(
                                                        '#P912UH',
                                                        style: TextStyle(
                                                          fontSize: 14,
                                                          color: Color(0xFF1B7E71),
                                                          fontWeight: FontWeight.w500,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(height: 5.0,),
                                                  Text(
                                                    'Agung motors',
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                      color: Color(0xFF667085),
                                                      fontWeight: FontWeight.w400,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10.0,),
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                                    child: Container(
                                      height: 80,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        border: Border.all(
                                          color: Color(0XFFEAECF0),
                                          width: 1.0,
                                        ),
                                        borderRadius: BorderRadius.circular(10.0),
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
                                                'assets/logomobil/suzuki.png',
                                                height: 40,
                                                width: 40,
                                              ),
                                              SizedBox(width: 10.0,),
                                              const Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Text(
                                                        'Futura 2009',
                                                        style: TextStyle(
                                                          fontSize: 14,
                                                          color: Color(0xFF101828),
                                                          fontWeight: FontWeight.w500,
                                                        ),
                                                      ),
                                                      SizedBox(width: 10.0,),
                                                      Text(
                                                        '#P912UH',
                                                        style: TextStyle(
                                                          fontSize: 14,
                                                          color: Color(0xFF1B7E71),
                                                          fontWeight: FontWeight.w500,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(height: 5.0,),
                                                  Text(
                                                    'Sinar jaya',
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                      color: Color(0xFF667085),
                                                      fontWeight: FontWeight.w400,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10.0,),
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                                    child: Container(
                                      height: 80,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        border: Border.all(
                                          color: Color(0XFFEAECF0),
                                          width: 1.0,
                                        ),
                                        borderRadius: BorderRadius.circular(10.0),
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
                                                'assets/logomobil/isuzu.png',
                                                height: 40,
                                                width: 40,
                                              ),
                                              SizedBox(width: 10.0,),
                                              const Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Text(
                                                        'Panther 2014',
                                                        style: TextStyle(
                                                          fontSize: 14,
                                                          color: Color(0xFF101828),
                                                          fontWeight: FontWeight.w500,
                                                        ),
                                                      ),
                                                      SizedBox(width: 10.0,),
                                                      Text(
                                                        '#P912UH',
                                                        style: TextStyle(
                                                          fontSize: 14,
                                                          color: Color(0xFF1B7E71),
                                                          fontWeight: FontWeight.w500,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(height: 5.0,),
                                                  Text(
                                                    'Sumber makmur jaya',
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                      color: Color(0xFF667085),
                                                      fontWeight: FontWeight.w400,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 20.0,),
                                  const Text(
                                    'Tap to load more',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xFF1B7E71),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(height: 40.0,),
                                ],
                              ),
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
