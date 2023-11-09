import 'dart:ui';

import 'package:flutter/material.dart';

//این صفحه سویچ اکانته
class Screen_Switching extends StatelessWidget {
  const Screen_Switching({super.key});
// چون تو مین از متریال استفاده کردم تو این صفحه یه شالوده به اسم اسکففولد گذاشتم
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C1F2E),
      body: SafeArea(
        //تو اسکففولد از  سیف اریا استفاده کردم تا رو ناچ یا تاچ بار نره اطلاعتم
        child: Column(
          //یه سطون میزاریم تا همه چی رو تو این سطون ایجاد کنم
          children: [
            //با اکسپندد شروع کردم چون طرحمو به دو قسمت تبدیل کردم
            Expanded(
                child: Stack(
              //داستان استک اینه که  میتونی چنتا ویجت رو روی هم بندازی با استک
              //استک یه الاینمت میگیره با یه مشت بچه ای که میندازه رو هم و از همه مهم تر یه وجت پرکاربرد هم توش استفاده میشه
              //به اسم پوزیشن که پایین میگم میشه چیکار کرد
              alignment: AlignmentDirectional.center,
              children: [
                //با استفاده از کانتینر و پراپرتی دکور میتونیم یه صفحه رو دکورکنیم
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      //با این پراپرتی این دکور رو  تو کل صفحه پخش میکنیم
                      image: AssetImage(
                        'images/shapes.png',
                      ),
                    ),
                  ),
                ),
                //پوزیشن از ویجت های پرکاربرد در استک به  حساب میاد
                Positioned(
                  top: 122,
                  //در اینجا ما صفحه  بلوری  که روی صفحه داریم میتونیم با پوزیشن از بالا ۱۲۲ تا فاصله بدیم
                  child: ClipRRect(
                    //کلیک رکت باعث میشه فیلتر پایین فقط روی کانتینر ایجاد بشه نه روی  کل صفحه
                    child: BackdropFilter(
                      //با بکدراپ فیلتر  میتونیم روی صفحه بلور در راستای محور ایک و ایگرگ ایجاد  کنیم
                      filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
                      //و بچه بک دارپ  فیلتر رو کانتینر بدیم
                      child: Container(
                        width: 352,
                        height: 340,
                        // با بردر ردییوس دور کانتینر رو گرد میکنیم
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                          //و با این متد لینیر گردینت میتونیم رنگ گردینت ایجاد کنیم و یه شروع و پایان برای رنگ و  هم نوع رنگ رو در نظر بگیریم
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color.fromRGBO(255, 255, 255, 0.5),
                              Color.fromRGBO(255, 255, 255, 0.2)
                            ],
                          ),
                        ),
                        //و در اینجا بچه کانتینر رو یه سطون میزایم تا بتونیم وجت هامون رو توش زیر هم قرار بدیم
                        child: Column(children: [
                          SizedBox(height: 32),
                          SizedBox(
                            height: 129,
                            width: 129,
                            child: Image(
                              image: AssetImage('images/profile.png'),
                            ),
                          ),
                          SizedBox(height: 20),
                          Text('Milad Heydarloo',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(height: 20),
                          SizedBox(
                            height: 46,
                            width: 129,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xffF35383),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              onPressed: () {},
                              child: Text(
                                'Confirm',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          SizedBox(height: 32),
                          Text(
                            'Switch Account',
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )
                        ]),
                      ),
                    ),
                  ),
                ),
              ],
            )),
            //اگر ویجت تکس رو توی یه پدینگ نزارم نمیتونم بهش فاصله بدم  از پایینوبالا
            Padding(
              padding: EdgeInsets.only(top: 132, bottom: 63),
              child: Text(
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                  'Don’t have an account? / Sign up'),
            )
          ],
        ),
      ),
    );
  }
  //در نهایت پایان  صفحه سویچ اکانت
}
