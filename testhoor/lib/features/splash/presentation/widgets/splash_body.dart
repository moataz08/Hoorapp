import 'package:flutter/material.dart';
class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);
  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation? fadingAnimation;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 600));
    fadingAnimation =
        Tween<double>(begin: 0.2, end: 1).animate(animationController!)
          ..addListener(() {
            setState(() {
              if (animationController!.isCompleted) {
                animationController!.repeat(reverse: true,);
                goToNextView();

              }
            });
          });

    animationController?.forward();
  }

  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {

    return Container(
      child: Center(
        child: Opacity(
            opacity: fadingAnimation?.value,
            child: Image.asset('assets/images/hoorls.png',
                alignment: Alignment.topRight, scale: 5)),
      ),
    );
  }
  void goToNextView() {
    Future.delayed(Duration(seconds: 3),((){
      Navigator.of(context).pushNamed('/on_boarding_body');
    }));
  }
}
