import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/colors.dart';

class SiteLogo extends StatelessWidget {
  const SiteLogo({super.key, this.onTap});
final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
                 onTap: onTap,
                 child: const Text(
                  "Issa Samir Ibrahim", 
                 style: TextStyle(
                 fontSize: 15,
                 fontWeight: FontWeight.bold,
                 color: CustomColor.whiteSecondary),
                 ),
               );
  }
}