import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  PageController pageViewController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: AlignmentDirectional(0, 0),
              child: Image.network(
                'https://github.com/FeFeFelipe/imagenes/blob/main/kisspng-natural-gas-prices-energy-natural-gas-processing-electricity-supplier-5ae77cdf173e77.6565456015251202230952.jpg?raw=true',
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              'Gas Natural',
              style: TextStyle(
                fontFamily: 'Poppins',
                color: Color(0xC139617D),
                fontSize: 30,
              ),
            ),
          ],
        ),
        actions: [],
        centerTitle: true,
        elevation: 4,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFFDEDEDE),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                          child: Container(
                            width: double.infinity,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Color(0xFFEEEEEE),
                              border: Border.all(
                                color: Colors.white,
                              ),
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(-0.95, 0),
                              child: Text(
                                'Novedades',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF0F0F0F),
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                          child: Container(
                            width: double.infinity,
                            height: 250,
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Container(
                              width: double.infinity,
                              height: double.infinity,
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 35),
                                    child: PageView(
                                      controller: pageViewController ??= PageController(initialPage: 0),
                                      scrollDirection: Axis.horizontal,
                                      children: [
                                        Stack(
                                          children: [
                                            Image.network(
                                              'https://github.com/FeFeFelipe/PracticaDrawer/blob/master/assets/A2D0DCBF-CBE2-4CEC-8C17-82C4EDB98D11.jpg?raw=true',
                                              width: double.infinity,
                                              height: double.infinity,
                                              fit: BoxFit.fill,
                                            ),
                                          ],
                                        ),
                                        Container(
                                          height: double.infinity,
                                          child: Stack(
                                            children: [
                                              Image.network(
                                                'https://github.com/FeFeFelipe/PracticaDrawer/blob/master/assets/gasnn%201.jpg?raw=true',
                                                width: double.infinity,
                                                height: double.infinity,
                                                fit: BoxFit.fill,
                                              ),
                                            ],
                                          ),
                                        ),
                                        Stack(
                                          children: [
                                            Image.network(
                                              'https://github.com/FeFeFelipe/PracticaDrawer/blob/master/assets/banner-7-mayo-ver%20copy%202.jpg?raw=true',
                                              width: double.infinity,
                                              height: double.infinity,
                                              fit: BoxFit.cover,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0, 0.9),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(0, 65, 0, 0),
                                      child: SmoothPageIndicator(
                                        controller: pageViewController ??= PageController(initialPage: 0),
                                        count: 3,
                                        axisDirection: Axis.horizontal,
                                        onDotClicked: (i) {
                                          pageViewController.animateToPage(
                                            i,
                                            duration: Duration(milliseconds: 500),
                                            curve: Curves.ease,
                                          );
                                        },
                                        effect: ExpandingDotsEffect(
                                          expansionFactor: 2,
                                          spacing: 8,
                                          radius: 16,
                                          dotWidth: 16,
                                          dotHeight: 16,
                                          dotColor: Color(0x7039617D),
                                          activeDotColor: Color(0xFF39617D),
                                          paintStyle: PaintingStyle.fill,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                          child: Container(
                            width: double.infinity,
                            height: 375,
                            decoration: BoxDecoration(
                              color: Color(0xBAFFFFFF),
                            ),
                            child: GridView(
                              padding: EdgeInsets.zero,
                              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 1,
                                crossAxisSpacing: 10,
                                mainAxisSpacing: 10,
                                childAspectRatio: 1,
                              ),
                              scrollDirection: Axis.vertical,
                              children: [
                                Container(
                                  width: double.infinity,
                                  height: 400,
                                  decoration: BoxDecoration(
                                    color: Color(0x80EEEEEE),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                    children: [
                                      Text(
                                        'Que es el gas natural',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontFamily: 'Oswald',
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        '-El gas natural es un energético que se extrae del subsuelo.\n-Se le agrega un odorizante llamado mercaptano, que le permite ser detectado.\n-Se distribuye a través de gasoductos de acero y polietileno, materiales altamente resistentes incluso en zonas sísmicas.',
                                        style: TextStyle(
                                          fontFamily: 'Quicksand',
                                          color: Color(0xFF111010),
                                        ),
                                      ),
                                      Image.network(
                                        'https://github.com/FeFeFelipe/imagenes/blob/main/distribucion-de-gas.png?raw=true',
                                        width: 100,
                                        height: 200,
                                        fit: BoxFit.fill,
                                      ),
                                    ],
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
        ),
      ),
    );
  }
}
