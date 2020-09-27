import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'HomeWidget.dart';
import 'BudgetWidget.dart';
import 'LoanWidget.dart';
import 'TransactionsWidget.dart';
import '../Data.dart';

const GREEN = "green";
const WHITE = "white";
const GREY = "grey";

const Map<String, Color> customColors = {
  GREEN: Colors.green,
  WHITE: Colors.white,
  GREY: Color.fromRGBO(112, 112, 112, 1),
};

Data data = new Data();

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    HomeWidget(),
    BudgetWidget(),
    TransactionsWidget(),
    LoanWidget(),
  ];
  
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: customAppBar(),
        backgroundColor: customColors[GREEN],
        body: Center(
            child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(
                      FontAwesomeIcons.home,
                      color: customColors[GREY],
                      ),
                  title: Text(
                      'Home',
                      style: TextStyle(color: customColors[GREY],),
                      ),
              ),
              BottomNavigationBarItem(
                  icon: Icon(
                      FontAwesomeIcons.chartPie,
                      color: customColors[GREY],
                      ),
                  title: Text(
                      'Budget',
                      style: TextStyle(color: customColors[GREY],),
                      ),
              ),
              BottomNavigationBarItem(
                  icon: Icon(
                      FontAwesomeIcons.dollarSign,
                      color: customColors[GREY],
                      ),
                  title: Text(
                      'Transactions',
                      style: TextStyle(color: customColors[GREY],),
                      ),
              ),
              BottomNavigationBarItem(
                  icon: Icon(
                      FontAwesomeIcons.moneyCheckAlt,
                      color: customColors[GREY],
                      ),
                  title: Text(
                      'Loans',
                      style: TextStyle(color: customColors[GREY],),
                      ),
              ),
            ],
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
        ),
    );
  }
}

Widget customAppBar() {
  return PreferredSize(
      preferredSize: Size.fromHeight(30),
      child: AppBar(
          backgroundColor: Colors.green,
          elevation: 0,
          title: const Text('BudgetLoan'),
      ),
  );
}
