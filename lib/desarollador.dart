import 'package:villegas/cuenta.dart';

import '../main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DesarolladorWidget extends StatefulWidget {
  const DesarolladorWidget({Key key}) : super(key: key);

  @override
  _DesarolladorWidgetState createState() => _DesarolladorWidgetState();
}

class _DesarolladorWidgetState extends State<DesarolladorWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Text(
          'Desarollador',
          style: TextStyle(
            fontFamily: 'Poppins',
            color: Color(0xC139617D),
            fontSize: 22,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 15, 0),
            child: InkWell(
              onTap: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CuentaWidget(),
                  ),
                );
              },
              child: Icon(
                Icons.arrow_back,
                color: Color(0xFF50164A),
                size: 24,
              ),
            ),
          ),
        ],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xFFEEEEEE),
                ),
                child: Text(
                  '-Villegas Molina Luis Felipe-\n6-J(B)',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Quicksand',
                    color: Color(0xFF111010),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
