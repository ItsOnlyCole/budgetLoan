import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'HomeWidget.dart';
import 'BudgetWidget.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    HomeWidget(),
    BudgetWidget(),
    Text(
        'Transactions Screen'
    ),
    Text(
        'Loans Screen'
    ),
  ];
  
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text('BudgetLoan'),
        ),
        body: Center(
            child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(
                      FontAwesomeIcons.home,
                      color: Colors.grey,
                      ),
                  title: Text(
                      'Home',
                      style: TextStyle(color: Colors.grey,),
                      ),
              ),
              BottomNavigationBarItem(
                  icon: Icon(
                      FontAwesomeIcons.chartPie,
                      color: Colors.grey,
                      ),
                  title: Text(
                      'Budget',
                      style: TextStyle(color: Colors.grey,),
                      ),
              ),
              BottomNavigationBarItem(
                  icon: Icon(
                      FontAwesomeIcons.dollarSign,
                      color: Colors.grey,
                      ),
                  title: Text(
                      'Transactions',
                      style: TextStyle(color: Colors.grey,),
                      ),
              ),
              BottomNavigationBarItem(
                  icon: Icon(
                      FontAwesomeIcons.moneyCheckAlt,
                      color: Colors.grey,
                      ),
                  title: Text(
                      'Loans',
                      style: TextStyle(color: Colors.grey,),
                      ),
              ),
            ],
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
        ),
    );
  }
}
