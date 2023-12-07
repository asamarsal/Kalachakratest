import 'dart:developer';

import 'package:animate_gradient/animate_gradient.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kalachakra/pages/vehicleregistrationpage.dart';
import 'package:page_route_transition/page_route_transition.dart';
import 'package:animated_custom_dropdown/custom_dropdown.dart';

const List<String> listCondition = [
  'Baru',
  'Second',
];

const List<String> listBrand = [
  'Mitsubishi',
  'Yamaha',
  'Honda',
  'Nissan',
  'Hyundai',
];

const List<String> listModel = [
  'Colt',
];

const List<String> listVariant = [
  '3.9 FE 71 Solar',
];

const List<String> listManufactureyear = [
  '2014',
  '2015',
  '2016',
  '2017',
];

const List<String> listMileage = [
  '25000 - 30000',
  '30000 - 35000',
  '35000 - 40000',
  '40000 - 45000',
];

const List<String> listFueltype = [
  'Diesel',
];

const List<String> listTransmission = [
  'Manual',
];

const List<String> listExteriorcolor = [
  'Kuning',
  'Merah',
  'Hijau',
  'Biru',
];

class VehiclespecificationPage extends StatefulWidget {
  const VehiclespecificationPage({super.key});

  @override
  State<VehiclespecificationPage> createState() => _VehiclespecificationPageState();
}

class _VehiclespecificationPageState extends State<VehiclespecificationPage> {
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
                        padding: EdgeInsets.only(left: 0.0, right: 0.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            IconButton(
                              icon: const Icon(CupertinoIcons.arrow_left, size: 25, color: Color(0XFF24A896),),
                              onPressed: () {
                                PageRouteTransition.effect = TransitionEffect.rightToLeft;
                                PageRouteTransition.push(context, const VehicleregistrationPage());
                              },
                            ),
                            const Text(
                                'Registration Number', style: TextStyle(
                                color: Color(0XFF24A896), fontSize: 16
                              ),
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
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.black12,
                            width: 1.0,
                          ),
                        ),
                      ),
                      child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Specification', style: TextStyle(fontSize: 22, color: Colors.black, fontWeight: FontWeight.w400)),
                            SizedBox(height: 10),
                            Text('Vehicle details will be submitted on Yodamobi. Please fill in required information',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black54
                                )
                            ),
                          ]
                      ),
                  ),
                  SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.0, right: 20, top: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Condition *',
                                style: TextStyle(fontSize: 14, color: Colors.black54),
                              ),
                              Container(
                                child: CustomDropdown<String>(
                                  hintText: 'Pilih Keterangan',
                                  items: listCondition,
                                  initialItem: listCondition[0],
                                  onChanged: (value) {
                                    log('changing value to: $value');
                                  },
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Condition *',
                                style: TextStyle(fontSize: 14, color: Colors.black54),
                              ),
                              Container(
                                child: CustomDropdown<String>(
                                  hintText: 'Pilih Keterangan',
                                  items: listCondition,
                                  initialItem: listCondition[0],
                                  onChanged: (value) {
                                    log('changing value to: $value');
                                  },
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Condition *',
                                style: TextStyle(fontSize: 14, color: Colors.black54),
                              ),
                              Container(
                                child: CustomDropdown<String>(
                                  hintText: 'Pilih Keterangan',
                                  items: listCondition,
                                  initialItem: listCondition[0],
                                  onChanged: (value) {
                                    log('changing value to: $value');
                                  },
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Condition *',
                                style: TextStyle(fontSize: 14, color: Colors.black54),
                              ),
                              Container(
                                child: CustomDropdown<String>(
                                  hintText: 'Pilih Keterangan',
                                  items: listCondition,
                                  initialItem: listCondition[0],
                                  onChanged: (value) {
                                    log('changing value to: $value');
                                  },
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Condition *',
                                style: TextStyle(fontSize: 14, color: Colors.black54),
                              ),
                              Container(
                                child: CustomDropdown<String>(
                                  hintText: 'Pilih Keterangan',
                                  items: listCondition,
                                  initialItem: listCondition[0],
                                  onChanged: (value) {
                                    log('changing value to: $value');
                                  },
                                ),
                              ),
                            ],
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
