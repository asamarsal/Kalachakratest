import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animate_gradient/animate_gradient.dart';
import 'package:kalachakra/pages/financingpage.dart';
import 'package:page_route_transition/page_route_transition.dart';


class VehicleregisteredPage extends StatefulWidget {
  const VehicleregisteredPage({super.key});

  @override
  State<VehicleregisteredPage> createState() => _VehicleregisteredPageState();
}

class _VehicleregisteredPageState extends State<VehicleregisteredPage> {
  String? dropdownValue;

  List<Map<String, dynamic>> listPilihanstatus = [
    {'name': 'Listing', 'imagePath': 'assets/icondropdownungu.png'},
    {'name': 'Inspecting', 'imagePath': 'assets/icondropdownungu.png'},
    {'name': 'Unit not available', 'imagePath': 'assets/icondropdownbiru.png'},
  ];

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
                                PageRouteTransition.push(context, const FinancingPage());
                              },
                            ),
                            const Text(
                                'Financing', style: TextStyle(
                                color: Color(0XFF24A896), fontSize: 16
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      width: double.infinity,
                      height: 80,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      child: const Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Nama Mobil', style: TextStyle(fontSize: 22, color: Color(0XFF101828), fontWeight: FontWeight.w400)),
                            SizedBox(height: 10),
                            Text('#321881', style: TextStyle(fontSize: 16, color: Color(0XFF667085))),
                          ]
                      )
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    width: double.infinity,
                    height: 80,
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20.0),
                          width: double.infinity,
                          height: 80,
                          decoration: const BoxDecoration(
                            color: Colors.transparent,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              DropdownButtonFormField<String>(
                                hint: const Text('Information Status'),
                                value: dropdownValue,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                  ),
                                ),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    dropdownValue = newValue!;
                                  });
                                },
                                items: listPilihanstatus.map((map) {
                                  return DropdownMenuItem<String>(
                                    value: map['name'].toString(),
                                    child: Row(
                                      children: [
                                        SizedBox(width: 10.0),
                                        Image.asset(
                                          map['imagePath'],
                                          width: 24,
                                          height: 24,
                                        ),
                                        SizedBox(width: 10.0),
                                        Text(map['name']),
                                      ],
                                    ),
                                  );
                                }).toList(),
                              ),
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                  SizedBox(height: 10.0,),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Divider(
                      color: Color(0xFFEAECF0),
                      thickness: 1.0,
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    width: double.infinity,
                    height: 30,
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: const Text(
                            'Specification',
                            style: TextStyle(
                                color: Color(0XFF1B7E71),
                                fontSize: 16
                            ),
                          ),
                        ),
                        Spacer(),
                        Icon(CupertinoIcons.ellipsis_vertical, size: 20, color: Color(0XFF667085),),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.0,),
                  Expanded(
                    child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Container(
                                height: 60,
                                width: double.infinity,
                                decoration: const BoxDecoration(
                                  color: Color(0XFFF9FAFB),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Registration Number',
                                        style: TextStyle(fontSize: 14, color: Color(0xFF101828), fontWeight: FontWeight.w500),
                                      ),
                                      Spacer(),
                                      Text(
                                        'B 2323 SLI',
                                        style: TextStyle(fontSize: 14, color: Color(0XFF667085), fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: 60,
                                width: double.infinity,
                                decoration: const BoxDecoration(
                                  color: Colors.transparent,
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Condition',
                                        style: TextStyle(fontSize: 14, color: Color(0xFF101828), fontWeight: FontWeight.w500),
                                      ),
                                      Spacer(),
                                      Text(
                                        'B 2323 SLI',
                                        style: TextStyle(fontSize: 14, color: Color(0XFF667085), fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: 60,
                                width: double.infinity,
                                decoration: const BoxDecoration(
                                  color: Color(0XFFF9FAFB),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Brand',
                                        style: TextStyle(fontSize: 14, color: Color(0xFF101828), fontWeight: FontWeight.w500),
                                      ),
                                      Spacer(),
                                      Text(
                                        'B 2323 SLI',
                                        style: TextStyle(fontSize: 14, color: Color(0XFF667085), fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: 60,
                                width: double.infinity,
                                decoration: const BoxDecoration(
                                  color: Colors.transparent,
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Model',
                                        style: TextStyle(fontSize: 14, color: Color(0xFF101828), fontWeight: FontWeight.w500),
                                      ),
                                      Spacer(),
                                      Text(
                                        'B 2323 SLI',
                                        style: TextStyle(fontSize: 14, color: Color(0XFF667085), fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: 60,
                                width: double.infinity,
                                decoration: const BoxDecoration(
                                  color: Color(0XFFF9FAFB),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Variant',
                                        style: TextStyle(fontSize: 14, color: Color(0xFF101828), fontWeight: FontWeight.w500),
                                      ),
                                      Spacer(),
                                      Text(
                                        'B 2323 SLI',
                                        style: TextStyle(fontSize: 14, color: Color(0XFF667085), fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: 60,
                                width: double.infinity,
                                decoration: const BoxDecoration(
                                  color: Colors.transparent,
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Manufacture Year',
                                        style: TextStyle(fontSize: 14, color: Color(0xFF101828), fontWeight: FontWeight.w500),
                                      ),
                                      Spacer(),
                                      Text(
                                        'B 2323 SLI',
                                        style: TextStyle(fontSize: 14, color: Color(0XFF667085), fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: 60,
                                width: double.infinity,
                                decoration: const BoxDecoration(
                                  color: Color(0XFFF9FAFB),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Mileage',
                                        style: TextStyle(fontSize: 14, color: Color(0xFF101828), fontWeight: FontWeight.w500),
                                      ),
                                      Spacer(),
                                      Text(
                                        'B 2323 SLI',
                                        style: TextStyle(fontSize: 14, color: Color(0XFF667085), fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: 60,
                                width: double.infinity,
                                decoration: const BoxDecoration(
                                  color: Colors.transparent,
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Fuel Type',
                                        style: TextStyle(fontSize: 14, color: Color(0xFF101828), fontWeight: FontWeight.w500),
                                      ),
                                      Spacer(),
                                      Text(
                                        'B 2323 SLI',
                                        style: TextStyle(fontSize: 14, color: Color(0XFF667085), fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: 60,
                                width: double.infinity,
                                decoration: const BoxDecoration(
                                  color: Color(0XFFF9FAFB),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Transmission',
                                        style: TextStyle(fontSize: 14, color: Color(0xFF101828), fontWeight: FontWeight.w500),
                                      ),
                                      Spacer(),
                                      Text(
                                        'B 2323 SLI',
                                        style: TextStyle(fontSize: 14, color: Color(0XFF667085), fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: 60,
                                width: double.infinity,
                                decoration: const BoxDecoration(
                                  color: Colors.transparent,
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Exterior Color',
                                        style: TextStyle(fontSize: 14, color: Color(0xFF101828), fontWeight: FontWeight.w500),
                                      ),
                                      Spacer(),
                                      Text(
                                        'B 2323 SLI',
                                        style: TextStyle(fontSize: 14, color: Color(0XFF667085), fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: 60,
                                width: double.infinity,
                                decoration: const BoxDecoration(
                                  color: Color(0XFFF9FAFB),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Price',
                                        style: TextStyle(fontSize: 14, color: Color(0xFF101828), fontWeight: FontWeight.w500),
                                      ),
                                      Spacer(),
                                      Text(
                                        'B 2323 SLI',
                                        style: TextStyle(fontSize: 14, color: Color(0XFF667085), fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: 100,
                                width: double.infinity,
                                decoration: const BoxDecoration(
                                  color: Colors.transparent,
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Notes',
                                        style: TextStyle(fontSize: 14, color: Color(0xFF101828), fontWeight: FontWeight.w500),
                                      ),
                                      SizedBox(height: 10.0,),
                                      Text(
                                        'Orisinil, pajak panjang, mesin josss, insha allah unit siap kerja. Cek unit di gunung putri, bogor.',
                                        style: TextStyle(fontSize: 16, color: Color(0xFF344054), fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20.0),
                                child: Divider(
                                  color: Color(0xFFEAECF0),
                                  thickness: 2.0,
                                ),
                              ),
                              Container(
                                height: 60,
                                width: double.infinity,
                                decoration: const BoxDecoration(
                                  color: Colors.transparent,
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Seller & location',
                                        style: TextStyle(fontSize: 14, color: Color(0xFF1B7E71)),
                                      ),
                                      Spacer(),
                                      Icon(CupertinoIcons.ellipsis_vertical, size: 20, color: Color(0XFF667085),),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: 60,
                                width: double.infinity,
                                decoration: const BoxDecoration(
                                  color: Color(0XFFF9FAFB),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Seller name',
                                        style: TextStyle(fontSize: 14, color: Color(0xFF344054), fontWeight: FontWeight.w500),
                                      ),
                                      Spacer(),
                                      Text(
                                        'B 2323 SLI',
                                        style: TextStyle(fontSize: 14, color: Color(0XFF667085), fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: 60,
                                width: double.infinity,
                                decoration: const BoxDecoration(
                                  color: Colors.transparent,
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Mobile number',
                                        style: TextStyle(fontSize: 14, color: Color(0xFF344054), fontWeight: FontWeight.w500),
                                      ),
                                      Spacer(),
                                      Text(
                                        'B 2323 SLI',
                                        style: TextStyle(fontSize: 14, color: Color(0XFF667085), fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: 60,
                                width: double.infinity,
                                decoration: const BoxDecoration(
                                  color: Color(0XFFF9FAFB),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Province',
                                        style: TextStyle(fontSize: 14, color: Color(0xFF344054), fontWeight: FontWeight.w500),
                                      ),
                                      Spacer(),
                                      Text(
                                        'B 2323 SLI',
                                        style: TextStyle(fontSize: 14, color: Color(0XFF667085), fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: 60,
                                width: double.infinity,
                                decoration: const BoxDecoration(
                                  color: Colors.transparent,
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        'District',
                                        style: TextStyle(fontSize: 14, color: Color(0xFF344054), fontWeight: FontWeight.w500),
                                      ),
                                      Spacer(),
                                      Text(
                                        'B 2323 SLI',
                                        style: TextStyle(fontSize: 14, color: Color(0XFF667085), fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: 60,
                                width: double.infinity,
                                decoration: const BoxDecoration(
                                  color: Color(0XFFF9FAFB),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Sub District',
                                        style: TextStyle(fontSize: 14, color: Color(0xFF344054), fontWeight: FontWeight.w500),
                                      ),
                                      Spacer(),
                                      Text(
                                        'B 2323 SLI',
                                        style: TextStyle(fontSize: 14, color: Color(0XFF667085), fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: 100,
                                width: double.infinity,
                                decoration: const BoxDecoration(
                                  color: Colors.transparent,
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Full Address',
                                        style: TextStyle(fontSize: 14, color: Color(0xFF344054), fontWeight: FontWeight.w500),
                                      ),
                                      SizedBox(height: 10.0,),
                                      Text(
                                        'Jl. Rawalumbu Utara No. 43, Blok A Perumahaan Rawalumbu Raya Cluster Gading.',
                                        style: TextStyle(fontSize: 16, color: Color(0xFF667085)),
                                      ),
                                    ],
                                  ),
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

class CustomDropdown extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(5),
      ),
      child: const Row(
        children: [
          Icon(Icons.person),
          SizedBox(width: 10),
          Expanded(
              child: Text("Pilih Pengguna", style: TextStyle(fontSize: 16))
          ),
          Icon(Icons.arrow_drop_down)
        ],
      ),
    );
  }
}
