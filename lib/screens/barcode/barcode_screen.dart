import 'package:flutter/material.dart';

class BarCodeScreen extends StatefulWidget {
  static String routeName = "/barcode";

  @override
  _BarCodeScreenState createState() => _BarCodeScreenState();
}

class _BarCodeScreenState extends State<BarCodeScreen> {
  @override
  Widget build(BuildContext context) {
    final BarCodeScanArguments arguments =
        ModalRoute.of(context).settings.arguments;

    return Scaffold(
      
    );
  }
}

class BarCodeScanArguments {
  final String barCode;

  BarCodeScanArguments({@required this.barCode});
}
