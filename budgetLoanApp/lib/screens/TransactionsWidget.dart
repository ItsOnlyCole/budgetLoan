import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'MainScreen.dart';
import '../Data.dart';

class TransactionsWidget extends StatefulWidget {
  @override
  _TransactionsWidgetState createState() => _TransactionsWidgetState(); 
}

class _TransactionsWidgetState extends State<TransactionsWidget> {
  @override
  Widget build(BuildContext context){
    return Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget> [
              Text(
                  "Transaction History Goes Here",
                  style: TextStyle(
                      fontSize: 45.0,
                      color: customColors[WHITE],
                  ),
              ),
              FlatButton(
                  child: Text(
                      ('Add Transaction'),
                      style: TextStyle(
                          color: customColors[GREY],
                      ),
                  ),
                  color: customColors[WHITE],
                  onPressed: () {/** */}
                  //Pressing button would bring up add transaction screen
              )
            ],
        ),
    );
  }
}
