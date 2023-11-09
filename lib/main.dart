import 'package:flutter/material.dart';

void main() {
  runApp(_Application());
}

//
class _Application extends StatelessWidget {
  const _Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
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
