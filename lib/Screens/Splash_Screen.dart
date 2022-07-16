import 'package:coffe_project/Screens/HomeScreen.dart';
import 'package:coffe_project/Screens/SignIn_Screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override

  void initState(){
    super.initState();
    _navigateHomeScreen();
  }
  _navigateHomeScreen()async{
    await Future.delayed(const Duration(milliseconds: 2000),(){});
    Navigator.pushReplacement(
      context, MaterialPageRoute(
      builder: (context)=> Sign_In(),
    ),
    );
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.orangeAccent,
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset('Assets/Images/Splash-Screen.webp',
                    fit: BoxFit.cover,
                    height: 780,
                    color: Colors.black54,
                    colorBlendMode: BlendMode.darken,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 60.0,top: 200,right: 50),
                    child: Image.asset('Assets/Images/coffee-Splash.png',
                    fit: BoxFit.cover,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 550.0,left: 100),
                    child: Text('Coffee Shope',style: TextStyle(
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w800,
                      fontSize: 25,
                    ),
                    ),
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.only(top: 650.0,left: 80),
                  //   child: Container(
                  //     height: 60,
                  //     width: 190,
                  //    decoration: BoxDecoration(
                  //      color: Colors.brown,
                  //      borderRadius: BorderRadius.circular(30),
                  //    ),
                  //     child: const Center(
                  //       child: Text('Get Start',
                  //       style: TextStyle(
                  //         fontSize: 25,
                  //         fontWeight: FontWeight.w800,
                  //         fontStyle: FontStyle.italic,
                  //         color: Colors.white,
                  //       ),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
