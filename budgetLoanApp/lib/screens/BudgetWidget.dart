import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'MainScreen.dart';
import '../Data.dart';

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
                  color: customColors[WHITE],
                ),
              ),
              Text(
                ("\$" + data.formatData(data.moneyTotal)),
                style: TextStyle(
                  fontSize: 85.0,
                  color: customColors[WHITE],
                ),
              ),
              Text(
                  "\n\n",
              ),
              Text(
                  ("Spending Money: \$" + data.formatData(data.moneyForSpending)),
                  style: TextStyle(
                      fontSize: 30.0,
                      color: customColors[WHITE],
                  ),
              ),
              Text(
                  ("Bills: \$" + data.formatData(data.moneyForBills)),
                  style: TextStyle(
                      fontSize: 30.0,
                      color: customColors[WHITE],
                  ),
              ),
              Text(
                  ("Loan Savings: \$" + data.formatData(data.moneySavedForLoans)),
                  style: TextStyle(
                      fontSize:30.0,
                      color: customColors[WHITE],
                  ),
              ),
            ],
        ),
    );
  }
}
