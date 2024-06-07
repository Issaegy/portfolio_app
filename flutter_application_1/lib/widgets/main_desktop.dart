import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/colors.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    return Container(
                   color: CustomColor.black,    
                   child: Container(
                    margin: const EdgeInsets.symmetric
                    (horizontal: 20,),
                    height: screenSize.height/1.2,
                    constraints: const BoxConstraints(minHeight: 350,),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:[
                          Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              " Hi,\n Ich bin der Issa Samir Ibrahim \n Student an der THM", 
                            style: TextStyle(
                              fontSize: 20,
                              height: 1.5,
                              fontWeight: FontWeight.normal,
                              color: CustomColor.whitePrimary,
                              ),
                            ),
                            const SizedBox(height: 15),
                            SizedBox(
                              width: 300,
                              child: ElevatedButton(
                                onPressed: (){},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white24,
                                ), 
                                child: const Text(
                                  "Download: Mein Lebenslauf",
                                style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                           ]
                          ),
                        CircleAvatar (
                        radius: screenWidth/10,
                        backgroundColor: Colors.transparent, 
                        backgroundImage: AssetImage("assets/bild.png"),
                        child: ClipOval(
                          child: SizedBox(
                            width: screenWidth/5,
                            height: screenWidth/5,
                          child: Image.asset(
                            "assets/bild.png",
                            fit:BoxFit.cover),
                        ),
                      ),
                     ), 
                   ],
                 ),
                ),
              );
  }
  }