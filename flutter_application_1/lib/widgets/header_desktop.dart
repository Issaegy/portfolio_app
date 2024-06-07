import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/colors.dart';
import 'package:flutter_application_1/constants/nav_items.dart';
import 'package:flutter_application_1/styles/style.dart';
import 'package:flutter_application_1/widgets/side_logo.dart';

class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
            height: 60,
            margin: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 20,
              ),
            width: double.maxFinite,
            decoration: kHeaderDecoration,
            child: Row(
              children: [
                SiteLogo
                (onTap: () {},
                ),
               const Spacer(),
               for(int i=0; i< navTitles.length;i++)
               Padding(
                padding: const EdgeInsets.only(right: 20),
                child: TextButton(
                onPressed: (){}, 
                child: Text(navTitles[i], style: const TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w500,
                  color: CustomColor.whitePrimary, 
                  ),
                  ),
                ),
              ),
             ],
            ),
           );
  }
}