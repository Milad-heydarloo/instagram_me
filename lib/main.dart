import 'package:flutter/material.dart';
import 'package:instagram/screens/login_screen.dart';
import 'package:instagram/screens/switch_accont.dart';

void main() {
  runApp(_Application());
}

//
class _Application extends StatelessWidget {
  const _Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //در اینجا ما میخوایم تم و استایل کل اپ رو از صفحه اول اپ مدیریت کنیم
      theme: ThemeData(
          //برای اینکار از تم و تم دیتا استفاده میکنیم
          textTheme: TextTheme(
              //تکست تم برای استایل دهی به متن های برنامه است و تمام متن ها به اینجا متصل میشن جهت دریافت استایل
              headline1: TextStyle(
                  fontFamily: 'GB', fontSize: 16, color: Colors.white),
              headline2: TextStyle(
                  fontFamily: 'GB', fontSize: 20, color: Colors.white)),

          //الویتت باتن جهت دادن استایل به تمام الویت باتن های برنامه
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                primary: Color(0xffF35383),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                //در اینجا هم استایل مدیم به متن دکمه ای که داریم
                textStyle: TextStyle(fontFamily: 'GB', fontSize: 12)),
          )),
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            repeat: ImageRepeat.repeat,
            image: AssetImage('images/pattern1.png'),
          ),
        ),
        child: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 80,
              ),
              child: Center(
                child: Image(
                  image: AssetImage('images/Startlogo.png'),
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              child: Column(
                children: [
                  Text(
                    'From',
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  Text(
                    'Milademoun',
                    style: TextStyle(fontSize: 13, color: Colors.white),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

//

// class _App_SplashScreen extends StatelessWidget {
//   const _App_SplashScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     //اینجا اینطوریه که یه کانتینر داریم که توش از دکور استفاده کردیم که داخل این دکور هم یه باکس دکور عکس خورده که ریپیت براش فعال کردیم تا صفحه اصلی رو برامون بسازه
//     return Container(
//       child: Scaffold(
//         //یه بچه هم بهش دادیم که داخل این بچه یه شالوده اس که تو دلش یه اکسپنده که داخل این اکسپنده هم یه سطونه
//         backgroundColor: Colors.transparent,
//         body: Column(
//           children: [
//             Expanded(
//               child: Center(
//                 child: Container(
//                   height: 77,
//                   width: 155,
//                   child: Image(
//                     image: AssetImage(
//                       'images/Startlogo.png',
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             Text(
//               'From',
//               style: TextStyle(fontSize: 18, color: Colors.white),
//             ),
//             Text(
//               'Milademoun',
//               style: TextStyle(fontSize: 13, color: Colors.white),
//             )
//           ],
//         ),
//       ),
//       decoration: BoxDecoration(
//         image: DecorationImage(
//           repeat: ImageRepeat.repeat,
//           image: AssetImage(
//             'images/pattern1.png',
//           ),
//         ),
//       ),
//     );
//   }
// }
//
