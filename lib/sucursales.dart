import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:villegas/servicios.dart';

class SucursalesWidget extends StatefulWidget {
  const SucursalesWidget({Key key}) : super(key: key);

  @override
  _SucursalesWidgetState createState() => _SucursalesWidgetState();
}

class _SucursalesWidgetState extends State<SucursalesWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Text(
          'servicios',
          style: TextStyle(
            fontFamily: 'Source Sans Pro',
            color: Color(0xC139617D),
            fontSize: 22,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 15, 10, 0),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ServiciosWidget()),
                );
              },
              child: FaIcon(
                FontAwesomeIcons.truck,
                color: Color(0xC139617D),
                size: 20,
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
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 370,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Color(0xBEFFFFFF),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Sucursales',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        '-Sucursales abiertas-',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xFF57636C),
                        ),
                      ),
                      Expanded(
                        child: ListView(
                          padding: EdgeInsets.zero,
                          scrollDirection: Axis.horizontal,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                                      child: Container(
                                        width: 160,
                                        height: 160,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFEEEEEE),
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Image.network(
                                              'https://www.gasnn.com/juarez/images/raza-nueva.jpg',
                                              width: double.infinity,
                                              height: 90,
                                              fit: BoxFit.cover,
                                            ),
                                            Text(
                                              'Sucursal RAZA-Av. De la Raza #6540',
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontFamily: 'Poppins',
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                                      child: Container(
                                        width: 160,
                                        height: 160,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFEEEEEE),
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Image.network(
                                              'https://www.gasnn.com/juarez/images/centenario-ok2.jpg',
                                              width: double.infinity,
                                              height: 90,
                                              fit: BoxFit.cover,
                                            ),
                                            Text(
                                              'Sucursal ITO-16 de Septiembre y Bolivia',
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontFamily: 'Poppins',
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                                      child: Container(
                                        width: 160,
                                        height: 160,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFEEEEEE),
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Image.network(
                                              'https://www.gasnn.com/juarez/images/centenario-ok2.jpg',
                                              width: double.infinity,
                                              height: 90,
                                              fit: BoxFit.cover,
                                            ),
                                            Text(
                                              'Sucursal ITO-16 de Septiembre y Bolivia',
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontFamily: 'Poppins',
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                                      child: Container(
                                        width: 160,
                                        height: 160,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFEEEEEE),
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Image.network(
                                              'https://www.gasnn.com/juarez/images/centenario-ok2.jpg',
                                              width: double.infinity,
                                              height: 90,
                                              fit: BoxFit.cover,
                                            ),
                                            Text(
                                              'Sucursal ITO-16 de Septiembre y Bolivia',
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontFamily: 'Poppins',
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFFEEEEEE),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Image.network(
                        'https://github.com/FeFeFelipe/imagenes/blob/main/QXLZAXVGQZMRTDJAAHA3YPTLKM.jpg?raw=true',
                        width: double.infinity,
                        height: 300,
                        fit: BoxFit.cover,
                      ),
                      Text(
                        'Nuestro personal cuenta con la mas alta capacitacion de servicio al cliente, con la myor experiencia y dominio de herramientas al moento del trabajo ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
