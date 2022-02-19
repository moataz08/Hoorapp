import 'package:flutter/material.dart';
import 'package:testhoor/core/utils/size_config.dart';
import 'package:testhoor/core/widgets/custombuttons/customgeneralbutton.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({Key? key,}) : super(key: key);
  // final String? Text;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Positioned(
        //     top: MediaQuery.of(context).size.height * .3,
        //     right: 85,
        //     child: Image.asset(
        //       'assets/images/Shapeforonboarding-1.png',
        //       alignment: Alignment.topRight,
        //       scale: 5,
        //     )),
        Positioned(
          top: MediaQuery.of(context).size.height * .09,
          right: 32,
          child: const Text(
            'Skip',
            style: TextStyle(
              fontFamily: 'Acumin Pro SemiCondensed',
              fontSize: 14,
              color: Color(0xff898989),
              fontWeight: FontWeight.w900,
              // height: 2.142857142857143,
            ),
            // textHeightBehavior:
            //     TextHeightBehavior(applyHeightToFirstAscent: false),
            textAlign: TextAlign.left,
          ),
        ),
        // Positioned(
        //   child:  CustomGeneraLButton(),
        //     bottom: SizeConfig.defaultsize ! *10,
        //   left: SizeConfig.defaultsize ! *10,
        //   right: SizeConfig.defaultsize ! *10,
        //
        //
        // ),

      ],
    );
  }
}
