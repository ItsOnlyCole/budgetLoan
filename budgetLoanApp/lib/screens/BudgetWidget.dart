import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BudgetWidget extends StatefulWidget {
  @override
  _BudgetWidgetState createState() => _BudgetWidgetState();
}

class _BudgetWidgetState extends State<BudgetWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                "Total Summary",
                style: TextStyle(
                  fontSize: 45.0,
                ),
              ),
              Text(
                "\$ 0",
                style: TextStyle(
                  fontSize: 85.0,
                ),
              ),
            ],
        ),
    );
  }
}
