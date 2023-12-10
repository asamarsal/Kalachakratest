import 'dart:developer';
import 'package:animate_gradient/animate_gradient.dart';
import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kalachakra/pages/vehicleregistrationpage.dart';
import 'package:kalachakra/pages/vehiclesentsuccess.dart';
import 'package:lottie/lottie.dart';
import 'package:page_route_transition/page_route_transition.dart';
import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:text_form_field_wrapper/text_form_field_wrapper.dart';

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
  'Automatic',
];

const List<String> listExteriorcolor = [
  'Kuning',
  'Merah',
  'Hijau',
  'Biru',
];

const List<String> listProvince = [
  'Jawa Barat',
  'Jawa Timur',
  'Jawa Tengah',
];

const List<String> listDistrict = [
  'Surabaya',
];

const List<String> listSubdistrict = [
  'Krembangan',
  'Kedungwuni',
  'Genteng',
  'Sukolilo',
];

class VehiclespecificationPage extends StatefulWidget {
  const VehiclespecificationPage({super.key});

  @override
  State<VehiclespecificationPage> createState() => _VehiclespecificationPageState();
}

class _VehiclespecificationPageState extends State<VehiclespecificationPage> {
  @override
  Widget build(BuildContext context) {

    TextFormField formField = TextFormField(
      initialValue: '',
      decoration: const InputDecoration(border: InputBorder.none),
    );

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
                        padding: const EdgeInsets.only(left: 0.0, right: 0.0),
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
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
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
                  Expanded(
                    child: SingleChildScrollView(
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
                                  style: TextStyle(fontSize: 14, color: Color(0xFF344054)),
                                ),
                                Container(
                                  child: CustomDropdown<String>(
                                    closedBorder: Border.all(color: Colors.black12),
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
                            const SizedBox(height: 5.0,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Brand *',
                                  style: TextStyle(fontSize: 14, color: Color(0xFF344054)),
                                ),
                                Container(
                                  child: CustomDropdown<String>(
                                    hintText: 'Pilih Keterangan',
                                    closedBorder: Border.all(color: Colors.black12),
                                    items: listBrand,
                                    initialItem: listBrand[0],
                                    onChanged: (value) {
                                      log('changing value to: $value');
                                    },
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 5.0,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Model *',
                                  style: TextStyle(fontSize: 14, color: Color(0xFF344054)),
                                ),
                                Container(
                                  child: CustomDropdown<String>(
                                    hintText: 'Pilih Keterangan',
                                    closedBorder: Border.all(color: Colors.black12),
                                    items: listModel,
                                    initialItem: listModel[0],
                                    onChanged: (value) {
                                      log('changing value to: $value');
                                    },
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 5.0,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Variant *',
                                  style: TextStyle(fontSize: 14, color: Color(0xFF344054)),
                                ),
                                Container(
                                  child: CustomDropdown<String>(
                                    hintText: 'Pilih Keterangan',
                                    closedBorder: Border.all(color: Colors.black12),
                                    items: listVariant,
                                    initialItem: listVariant[0],
                                    onChanged: (value) {
                                      log('changing value to: $value');
                                    },
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 5.0,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Manufacture Year *',
                                  style: TextStyle(fontSize: 14, color: Color(0xFF344054)),
                                ),
                                Container(
                                  child: CustomDropdown<String>(
                                    hintText: 'Pilih Keterangan',
                                    closedBorder: Border.all(color: Colors.black12),
                                    items: listManufactureyear,
                                    initialItem: listManufactureyear[0],
                                    onChanged: (value) {
                                      log('changing value to: $value');
                                    },
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 5.0,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Mileage *',
                                  style: TextStyle(fontSize: 14, color: Color(0xFF344054)),
                                ),
                                Container(
                                  child: CustomDropdown<String>(
                                    hintText: 'Pilih Keterangan',
                                    closedBorder: Border.all(color: Colors.black12),
                                    items: listMileage,
                                    initialItem: listMileage[0],
                                    onChanged: (value) {
                                      log('changing value to: $value');
                                    },
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 5.0,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Fuel Type *',
                                  style: TextStyle(fontSize: 14, color: Color(0xFF344054)),
                                ),
                                Container(
                                  child: CustomDropdown<String>(
                                    hintText: 'Pilih Keterangan',
                                    closedBorder: Border.all(color: Colors.black12),
                                    items: listFueltype,
                                    initialItem: listFueltype[0],
                                    onChanged: (value) {
                                      log('changing value to: $value');
                                    },
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 5.0,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Transmission *',
                                  style: TextStyle(fontSize: 14, color: Color(0xFF344054)),
                                ),
                                Container(
                                  child: CustomDropdown<String>(
                                    hintText: 'Pilih Keterangan',
                                    closedBorder: Border.all(color: Colors.black12),
                                    items: listTransmission,
                                    initialItem: listTransmission[0],
                                    onChanged: (value) {
                                      log('changing value to: $value');
                                    },
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 5.0,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Exterior Color *',
                                  style: TextStyle(fontSize: 14, color: Color(0xFF344054)),
                                ),
                                Container(
                                  child: CustomDropdown<String>(
                                    hintText: 'Pilih Keterangan',
                                    closedBorder: Border.all(color: Colors.black12),
                                    items: listExteriorcolor,
                                    initialItem: listExteriorcolor[0],
                                    onChanged: (value) {
                                      log('changing value to: $value');
                                    },
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 5.0,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Price *',
                                  style: TextStyle(fontSize: 14, color: Color(0xFF344054)),
                                ),
                                const SizedBox(height: 10.0,),
                                TextFormFieldWrapper(
                                  formField: formField,
                                  position: TextFormFieldPosition.alone,
                                  prefix: const Text('Rp'),
                                ),
                              ],
                            ),
                            SizedBox(height: 20.0,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Notes',
                                  style: TextStyle(fontSize: 14, color: Color(0xFF344054)),
                                ),
                                const SizedBox(height: 5.0,),
                                const Text(
                                  'Write a short additional informations.',
                                  style: TextStyle(fontSize: 14, color: Color(0XFF667085)),
                                ),
                                const SizedBox(height: 10.0,),
                                TextFormFieldWrapper(
                                  formField: formField,
                                  position: TextFormFieldPosition.alone,
                                  suffix: const Text(''),
                                ),
                              ],
                            ),
                            SizedBox(height: 20.0,),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Seller Info *',
                                  style: TextStyle(fontSize: 18, color: Color(0xFF101828)),
                                ),
                                SizedBox(height: 5.0,),
                                Text(
                                  'Please provide seller details',
                                  style: TextStyle(fontSize: 14, color: Color(0XFF667085)),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20.0,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Seller *',
                                  style: TextStyle(fontSize: 14, color: Color(0xFF344054)),
                                ),
                                Container(
                                  child: CustomDropdown<String>(
                                    hintText: 'Pilih Keterangan',
                                    closedBorder: Border.all(color: Colors.black12),
                                    items: listExteriorcolor,
                                    initialItem: listExteriorcolor[0],
                                    onChanged: (value) {
                                      log('changing value to: $value');
                                    },
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 20.0,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Mobile Number',
                                  style: TextStyle(fontSize: 14, color: Color(0xFF344054)),
                                ),
                                const SizedBox(height: 10.0,),
                                TextFormFieldWrapper(
                                  formField: TextFormField(
                                    initialValue: '',
                                    decoration: const InputDecoration(border: InputBorder.none),
                                    keyboardType: TextInputType.number, // Set jenis keyboard menjadi numeric
                                    inputFormatters: <TextInputFormatter>[
                                      FilteringTextInputFormatter.digitsOnly, // Hanya memperbolehkan angka
                                    ],
                                  ),
                                  position: TextFormFieldPosition.alone,
                                  prefix: const Icon(
                                    Icons.call_outlined,
                                    size: 20.0,
                                    color: Colors.green,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 20.0,),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Vehicle Location *',
                                  style: TextStyle(fontSize: 18, color: Color(0xFF101828)),
                                ),
                                SizedBox(height: 5.0,),
                                Text(
                                  'Please provide seller details',
                                  style: TextStyle(fontSize: 14, color: Color(0XFF667085)),
                                ),
                              ],
                            ),
                            SizedBox(height: 20.0,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Province *',
                                  style: TextStyle(fontSize: 14, color: Color(0xFF344054)),
                                ),
                                Container(
                                  child: CustomDropdown<String>(
                                    hintText: 'Pilih Keterangan',
                                    closedBorder: Border.all(color: Colors.black12),
                                    items: listProvince,
                                    initialItem: listProvince[0],
                                    onChanged: (value) {
                                      log('changing value to: $value');
                                    },
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 20.0,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'District *',
                                  style: TextStyle(fontSize: 14, color: Color(0xFF344054)),
                                ),
                                Container(
                                  child: CustomDropdown<String>(
                                    hintText: 'Pilih Keterangan',
                                    closedBorder: Border.all(color: Colors.black12),
                                    items: listDistrict,
                                    initialItem: listDistrict[0],
                                    onChanged: (value) {
                                      log('changing value to: $value');
                                    },
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 20.0,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Sub District *',
                                  style: TextStyle(fontSize: 14, color: Color(0xFF344054)),
                                ),
                                Container(
                                  child: CustomDropdown<String>(
                                    hintText: 'Pilih Keterangan',
                                    closedBorder: Border.all(color: Colors.black12),
                                    items: listSubdistrict,
                                    initialItem: listSubdistrict[0],
                                    onChanged: (value) {
                                      log('changing value to: $value');
                                    },
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 40.0,),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 0),
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
                                          child: const Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Icon(
                                                CupertinoIcons.checkmark_alt,
                                                color: Color(0xFF24A896),
                                                size: 18,
                                              )
                                            ],
                                          ),
                                        ),
                                        Image.asset('assets/connectorhijau.png'),
                                      ],
                                    ),
                                    SizedBox(width: 10.0,),
                                    const Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Registration number',
                                          style: TextStyle(fontSize: 18, color: Color(0xFF344054)),
                                        ),
                                        SizedBox(height: 5.0,),
                                        Text(
                                          'Please insert vehicle registration number.',
                                          style: TextStyle(fontSize: 14, color: Color(0XFF667085)),
                                        ),
                                      ],
                                    ),
                                  ]
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 0),
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
                                        Image.asset('assets/connectorgrey.png'),
                                      ],
                                    ),
                                    SizedBox(width: 10.0,),
                                    const Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Detail Information',
                                          style: TextStyle(fontSize: 18, color: Color(0xFF1B7E71)),
                                        ),
                                        SizedBox(height: 5.0,),
                                        Text(
                                          'Please insert vehicle detail information',
                                          style: TextStyle(fontSize: 14, color: Color(0XFF24A896)),
                                        ),
                                      ],
                                    ),
                                  ]
                              ),
                            ),
                            SizedBox(height: 40.0,),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 0.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  BouncingWidget(
                                    duration: Duration(milliseconds: 100),
                                    scaleFactor: 1.5,
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Container(
                                      width: 90,
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
                                              style: TextStyle(color: Color(0XFF344054)),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10.0,),
                                  BouncingWidget(
                                    duration: Duration(milliseconds: 100),
                                    scaleFactor: 1.5,
                                    onPressed: () {
                                      PageRouteTransition.effect = TransitionEffect.scale;
                                      PageRouteTransition.push(context, const VehiclesentsuccessPage());
                                    },
                                    child: Container(
                                      width: 80,
                                      height: 45,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: Color(0XFF24A896),
                                        border: Border.all(
                                          color: Colors.black26,
                                        ),
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
                            SizedBox(height: 30.0,),
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
