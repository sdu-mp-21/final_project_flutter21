import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class InfoScreen extends StatefulWidget {
  const InfoScreen({Key? key}) : super(key: key);

  @override
  _InfoScreenState createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {

  final String _appInfo = 'This app is created for SDU students. '+
  "Our future goals are to automate the processes of clubs' activities (managing members, club joining).";

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(16, 83, 16, 63),
                child: Image.asset('logo/logo.png'),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 32.0, horizontal: 16.0),
                alignment: Alignment.topLeft,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
                  color: Colors.white,
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Text(
                        'About',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        showDialog(
                          context: context, 
                          builder: (context) {
                            return Dialog(
                              child: Container(
                                width: MediaQuery.of(context).size.width*0.75,
                                height: MediaQuery.of(context).size.height/2,
                                child: Text(_appInfo),
                              ),
                            );
                          }
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.fromLTRB(0, 12, 0, 0),
                        padding: EdgeInsets.fromLTRB(12, 0, 0, 0),
                        alignment: Alignment.centerLeft,
                        height: 80,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.1),
                              offset: Offset(-2, 1),
                            ),
                          ]
                        ),
                        child: Text('App Info'),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(12, 0, 0, 0),
                      alignment: Alignment.centerLeft,
                      height: 80,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            offset: Offset(-2, 0),
                          ),
                        ]
                      ),
                      child: Text('Terms of Use'),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(12, 0, 0, 0),
                      alignment: Alignment.centerLeft,
                      height: 80,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            offset: Offset(-2, 0),
                          ),
                        ]
                      ),
                      child: Text('Links'),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 32),
                      padding: EdgeInsets.fromLTRB(12, 0, 0, 0),
                      alignment: Alignment.centerLeft,
                      height: 80,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            offset: Offset(-2, 2),
                          ),
                        ]
                      ),
                      child: Text('Version'),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Text(
                        'Support',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 12, 0, 0),
                      padding: EdgeInsets.fromLTRB(12, 0, 0, 0),
                      alignment: Alignment.centerLeft,
                      height: 80,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            offset: Offset(-2, 1),
                          ),
                        ]
                      ),
                      child: Text('Report a Bug'),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 32),
                      padding: EdgeInsets.fromLTRB(12, 0, 0, 0),
                      alignment: Alignment.centerLeft,
                      height: 80,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            offset: Offset(-2, 2),
                          ),
                        ]
                      ),
                      child: Text('Give Feedback'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
