import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Screen/Expenses.dart';
import 'ExpensesOrIncomeContainer.dart';

class customAppbar extends StatefulWidget implements PreferredSizeWidget {
  @override
  State<customAppbar> createState() => _customAppbarState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size(double.infinity, 831);
}

class _customAppbarState extends State<customAppbar>
    with SingleTickerProviderStateMixin
    implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        height: 1000.h,
        child: Stack(children: [
          Container(
            child: Column(
              children: [
                SizedBox(
                  height: 80.h,
                  child: Row(children: [
                    Ink(
                        child: InkWell(
                            child: Image.asset(
                      "image/Bill2.png",
                      fit: BoxFit.cover,
                      height: 50.h,
                    ))),
                    Expanded(
                        child: Center(
                      child: Row(
                        //  crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.arrow_drop_down,
                            color: Colors.white,
                          ),
                          Text('الإجمالي',
                              style: TextStyle(
                                fontSize: 24,
                                color: Colors.white,
                                fontFamily: 'Noto Naskh Arabic',
                              )),
                          Image.asset(
                            "image/MoneyPackage2.png",
                            fit: BoxFit.cover,
                            height: 50.h,
                          ),
                        ],
                      ),
                    )),
                    IconButton(
                      icon: Icon(
                        Icons.list_sharp,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        ExpensesScreen.key1!.currentState!
                            .openEndDrawer(); // this opens drawer
                      },
                    )
                  ]),
                ),
                TabBar(
                  indicatorColor: Colors.white,
                  controller: ExpensesScreen.tabController,
                  labelStyle: const TextStyle(
                    fontSize: 18.0,
                    fontFamily: 'Noto Naskh Arabic',
                  ),
                  tabs: [
                    Tab(
                      text: 'دخل',
                    ),
                    Tab(
                      text: 'نفقات',
                    ),
                  ],
                )
              ],
            ),
            height: 276.h,
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 99, 159, 134),
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(
                      50,
                    ),
                    bottomLeft: Radius.circular(
                      50,
                    ))),
          ),
          Positioned(
              top: 100,
              left: 20,
              child: Container(
                // margin: EdgeInsets.all(12.w),
                height: 618.h,
                width: 548.w,

                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(27)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 15.0, // soften the shadow
                        spreadRadius: 5.0, //extend the shadow
                      )
                    ]),
                child: Center(
                    child: TabBarView(
                        controller: ExpensesScreen.tabController,
                        children: [
                      // Text('Reem1'),
                      ExpensesOrIncome('reem1'),
                      ExpensesOrIncome('reem2'),
                    ])),
              ))
        ]));
  }

  @override
  Element createElement() {
    // TODO: implement createElement
    throw UnimplementedError();
  }

  @override
  List<DiagnosticsNode> debugDescribeChildren() {
    // TODO: implement debugDescribeChildren
    throw UnimplementedError();
  }

  @override
  // TODO: implement key
  Key? get key => throw UnimplementedError();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size(double.infinity, 831);

  @override
  String toStringDeep(
      {String prefixLineOne = '',
      String? prefixOtherLines,
      DiagnosticLevel minLevel = DiagnosticLevel.debug}) {
    // TODO: implement toStringDeep
    throw UnimplementedError();
  }

  @override
  String toStringShallow(
      {String joiner = ', ',
      DiagnosticLevel minLevel = DiagnosticLevel.debug}) {
    // TODO: implement toStringShallow
    throw UnimplementedError();
  }
}
