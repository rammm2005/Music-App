import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mysing/core/configs/assets/app_images.dart';
import 'package:mysing/core/configs/assets/app_vectors.dart';
import 'package:mysing/core/configs/theme/app_colors.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              vertical: 40,
              horizontal: 40,
            ),
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      AppIMages.introBg,
                    ))),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: SvgPicture.asset(AppVectors.logo),
                ),
                Spacer(),
                Text(
                  'Enjoy Listening for Music',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 18),
                ),
                SizedBox(
                  height: 21,
                ),
                Text(
                  'Dive into the world of melodies and beats. Let the rhythm take you on a journey, unwind, relax, and feel the essence of every note. Whether it’s your favorite song or a new discovery, music brings emotions to life. Enjoy the rhythm and let the music move you.',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: AppColors.gray,
                      fontSize: 13),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Container(
            color: Colors.black.withOpacity(0.15),
          )
        ],
      ),
    );
  }
}
