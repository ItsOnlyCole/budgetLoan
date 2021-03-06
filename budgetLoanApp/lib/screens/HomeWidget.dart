import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'MainScreen.dart';
import '../Data.dart';

class HomeWidget extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState(); 
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context){
    return Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget> [
              Text(
                  "Spendable Money",
                  style: TextStyle(
                      fontSize: 45.0,
                      color: customColors[WHITE],
                  ),
              ),
              Text(
                  ("\$" + data.formatData(data.moneyForSpending)),
                  style: TextStyle(
                      fontSize: 85.0,
                      color: customColors[WHITE],
                  ),
              ),
            ],
        ),
    );
  }
}
