import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/colors.dart';
import 'package:flutter_application_1/constants/hello.dart';
import 'package:flutter_application_1/widgets/drawer_mobile.dart';
import 'package:flutter_application_1/widgets/header_desktop.dart';
import 'package:flutter_application_1/widgets/header_mobile.dart';
import 'package:flutter_application_1/widgets/main_desktop.dart';

class HomePage extends StatefulWidget {
  const HomePage ({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  get fontSize => null;
final scaffoldKey = GlobalKey <ScaffoldState>();

  get alignment => null;
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.width;

        return LayoutBuilder(
          builder: (context,constraints) {
            return Scaffold(
              key: scaffoldKey,
              backgroundColor: CustomColor.scaffoldbg,
              endDrawer: constraints.maxWidth >= DesktopWidth?null : const DrawerMobile(),
              body: ListView(
                scrollDirection: Axis.vertical,  
                children:[
                  //Main
                if(constraints.maxWidth >= DesktopWidth)
                 const HeaderDesktop()
                 else
                 HeaderMobile(
                  onLogoTap: () {},
                  onMenuTap: () {
                    scaffoldKey.currentState?.openEndDrawer();
                  },
                 ),
                 
                 const MainDesktop(),

                 //Fähigkeiten 
                 Container(
                    height: 500,
                    width: double.maxFinite,
                    color: Color.fromARGB(255, 0, 0, 0),
                    ),
                     //Projekte
                  Container(
                    height: 500,
                    width: double.maxFinite,
                    ),
                     //Kontakt
                  Container(
                    height: 500,
                    width: double.maxFinite,
                    color: Color.fromARGB(255, 0, 0, 0),
                    ),
                     
                  Container(
                    height: 500,
                    width: double.maxFinite,
                    ),
                ],
              ),
            );
          }
        );
      }
  }