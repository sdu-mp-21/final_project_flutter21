import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TicketsScreen extends StatefulWidget {
  const TicketsScreen({Key? key}) : super(key: key);

  @override
  _TicketsScreenState createState() => _TicketsScreenState();
}

class _TicketsScreenState extends State<TicketsScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Container(
          color: Colors.white,
        ),
      ),
    );
  }
}
