import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'MainScreen.dart';
import '../Data.dart';

class LoanWidget extends StatefulWidget {
  @override
  _LoanWidgetState createState() => _LoanWidgetState(); 
}

class _LoanWidgetState extends State<LoanWidget> {
  @override
  Widget build(BuildContext context){
    return Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget> [
              Text(
                  data.loans[0].loanName,
                  style: TextStyle(
                      fontSize: 45.0,
                      color: customColors[WHITE],
                  ),
              ),
              Text(
                  ("Remaining Amount: \$" + data.loans[0].remainingAmount.toString()),
                  style: TextStyle(
                      fontSize: 25.0,
                      color: customColors[WHITE],
                  ),
              ),
              Text("\n\n"),
              Text(
                  ("Amount Paid: \$" + data.loans[0].amountPaid.toString()),
                  style: TextStyle(
                      fontSize: 25.0,
                      color: customColors[WHITE],
                  ),
              ),
              Text(
                  ("Interest Accrued: \$" + data.loans[0].interestAccrued.toString()),
                  style: TextStyle(
                      fontSize: 25.0,
                      color: customColors[WHITE],
                  ),
              ),
              Text(
                  ("\n\n" + (data.loans[0].durationInYears - data.loans[0].currentYearInLoan).toString() + " years remaining to pay off."),
                  style: TextStyle(
                      fontSize: 30.0,
                      color: customColors[WHITE],
                  ),
              ),
            ],
        ),
    );
  }
}
