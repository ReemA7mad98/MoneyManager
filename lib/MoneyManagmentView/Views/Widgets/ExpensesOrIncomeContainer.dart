import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:helloworld/MoneyManagmentView/Views/Widgets/myChart.dart';

import '../Screen/CategoryScreen.dart';
import '../Screen/Matters.dart';

class ExpensesOrIncome extends StatefulWidget {
  String title = '';
  ExpensesOrIncome(this.title);

  @override
  State<ExpensesOrIncome> createState() => _ExpensesOrIncomeState();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }

  @override
  // TODO: implement context
  BuildContext get context => throw UnimplementedError();

  @override
  void deactivate() {
    // TODO: implement deactivate
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
  }

  @override
  void didUpdateWidget(covariant StatefulWidget oldWidget) {
    // TODO: implement didUpdateWidget
  }

  @override
  void initState() {
    // TODO: implement initState
  }

  @override
  // TODO: implement mounted
  bool get mounted => throw UnimplementedError();

  @override
  void reassemble() {
    // TODO: implement reassemble
  }

  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
  }

  @override
  // TODO: implement widget
  StatefulWidget get widget => throw UnimplementedError();
}

class _ExpensesOrIncomeState extends State<ExpensesOrIncome>
    with SingleTickerProviderStateMixin {
  late TabController MytabController;

  initalizeTabController() {
    MytabController = TabController(length: 5, vsync: this);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initalizeTabController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    MytabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(27.0),
        child: Scaffold(
            appBar: AppBar(
              toolbarHeight: 20.h,
              backgroundColor: Colors.white,
              elevation: 0,
              bottom: TabBar(
                  indicatorColor: Color.fromARGB(255, 49, 134, 101),
                  labelStyle: const TextStyle(
                    fontSize: 18.0,
                    fontFamily: 'Noto Naskh Arabic',
                  ),
                  labelColor:
                      Color.fromARGB(255, 49, 134, 101), //For Selected tab
                  unselectedLabelColor: Color.fromARGB(255, 123, 124, 116),
                  controller: MytabController,
                  tabs: [
                    Tab(
                      text: '????????',
                    ),
                    Tab(
                      text: '??????',
                    ),
                    Tab(
                      text: '??????',
                    ),
                    Tab(
                      text: '??????????',
                    ),
                    Tab(
                      text: '??????',
                    )
                  ]),
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.startDocked,
            floatingActionButton: Padding(
                padding: const EdgeInsets.only(bottom: 31.0),
                child: FloatingActionButton(
                  backgroundColor: Color.fromARGB(255, 253, 194, 42),
                  onPressed: () {
                    //Navigator.of(context).pushNamed('CategoryScreen');
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (_) => MattersScreen(),
                      ),
                    );
                  },
                  child: Center(
                    child: Text('+',
                        style: TextStyle(color: Colors.black, fontSize: 28)),
                  ),
                )),
            body: Container(
                          height: 418.h,
                
                child: ChartApp()),
            ));
  }
}
