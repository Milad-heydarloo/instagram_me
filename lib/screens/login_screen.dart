import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        //برای اینکه یه رنگ گردینت به پشت عکی بدیم از پراپرتی گردینت باکس دکوریشن استفاده میکنیم
        gradient: LinearGradient(
          //بیگین اولییش میشه که تو کالرز هم اولین رنگ میشه
          begin: Alignment.topCenter,
          //اند میشه پایانیشن که دومین رنگ کالرز میشه
          end: Alignment.bottomCenter,
          colors: [Color(0xFF323A99), Color(0xFFF98BFC)],
        ),
      ),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            //استک بدای اینه که ما دوتا سطون رو بنزادیم رو هم
            alignment: AlignmentDirectional.bottomCenter,
            children: [
              _getimageContaner(),
              _getBoxContaner(context),
            ],
          )),
    );
  }
}

//اینجا ما یه سطون که توش دوتا اکسپندت ویجت که فضا رو به صورت مساوی تقسیم کنه
Widget _getimageContaner() {
  //واسه اینکه عکسمون بره زیر دومیپوزیشن بهش میدیم تا از بالا فاصله بگیره بره زیره اطلاعات لاگین
  return Positioned(
    top: 20,
    left: 0,
    right: 0,
    bottom: 0,
    child: Column(
      children: [
        //تو اولی عکس رو میزاریم تو یه کانتینر
        Expanded(
          child: Container(
            child: Image(image: AssetImage('images/rocket.png')),
          ),
        ),
        //تو دومی هم یه کانتینر خالی داریم
        Expanded(child: Container())
      ],
    ),
  );
}

//اینجا ما یه سطون که توش دوتا اکسپندت ویجت که فضا رو به صورت مساوی تقسیم کنه
Widget _getBoxContaner(BuildContext context) {
  return Column(
    children: [
      // تو اولی که قراره بی افته رو عکس یه کانتینر خالی داریم
      Expanded(child: Container()),
      //تو دومی یه کانتینر داریم که میخوایم دکورش کنیم
      Expanded(
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xFF1C1F2E),
            //گوشه های بالاشو گرد میکنیم
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
          ),
          //یه بچه هم بهش میدیم که قراره اطلاعات لاگین رو بهمون نشون بده
          child: getbodytext(context),
        ),
      )
    ],
  );
}

// این متد میشه اطلاعات داخل اون کانتینری که اطلاعات لاگین رو نشون میده
Widget getbodytext(BuildContext context) {
  return Expanded(
    child: Container(
      //اینجا واسه اینکه گوشه های بالا رو گرد کنیم از باکس دکور استفاده میکنیم تا بتونیم از پراپرتی بوردر ردیوس استفاده کنیم
      decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
      child: SingleChildScrollView(
        child: Column(
          //به بچه کانتینر هم یه سطون میدیم تا ویو اطلاعات لاگین رو اون تو زیر هم بزاریم
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Sign in to ',
                  style: Theme.of(context).textTheme.headline2,
                ),
                Image(
                  image: AssetImage('images/mood.png'),
                )
              ],
            ),
            SizedBox(
              height: 34,
            ),
            Padding(
              //padding فاصله قرینه از چپ و راست داشته باشه
              padding: EdgeInsets.symmetric(horizontal: 44),
              child: TextField(
                decoration: InputDecoration(
                  //contentPadding متن داخل ادیت تکس دیگه به بالا و چپ و راست نمیچسبه
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                  //اینم اسم پراپرتی تکس فیلده
                  label: Text(
                    'Emaile',
                    style: TextStyle(color: Color(0xffF35383), fontSize: 15),
                  ),
                  //با لیبل استایل میتونیم به لیبیلمون استایل میدیم
                  labelStyle: TextStyle(
                    fontFamily: 'GM',
                    fontSize: 20,
                    color: Colors.white,
                  ),
                  //اینجا برای تکس فیلد که رو صفحه حالت فعال داره میتونیم بردر بزاریم
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 3, color: Color(0xffF35383)),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  //اینجا هم برای کلیک شدن روش میتونیم یه بردر اضافه کنیم که بردرش تغییر کنه
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 3, color: Color(0xffF35383)),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Padding(
              //padding فاصله قرینه از چپ و راست داشته باشه
              padding: EdgeInsets.symmetric(horizontal: 44),
              child: TextField(
                decoration: InputDecoration(
                  //contentPadding متن داخل ادیت تکس دیگه به بالا و چپ و راست نمیچسبه
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                  //اینم اسم پراپرتی تکس فیلده
                  label: Text(
                    'Password',
                    style: TextStyle(color: Color(0xffF35383), fontSize: 15),
                  ),
                  //با لیبل استایل میتونیم به لیبیلمون استایل میدیم
                  labelStyle: TextStyle(
                    fontFamily: 'GM',
                    fontSize: 20,
                    color: Colors.white,
                  ),
                  //اینجا برای تکس فیلد که رو صفحه حالت فعال داره میتونیم بردر بزاریم
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 3, color: Color(0xffF35383)),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  //اینجا هم برای کلیک شدن روش میتونیم یه بردر اضافه کنیم که بردرش تغییر کنه
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 3, color: Color(0xffF35383)),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 18,
            ),
            SizedBox(
              height: 46,
              width: 129,
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Sign in to '),
                style: Theme.of(context).elevatedButtonTheme.style,
              ),
            ),
            SizedBox(
              height: 23,
            ),
            Text(
              'Don\’t have an account? / Sign up',
              style: TextStyle(color: Color(0x7FC5C5C5)),
            )
          ],
        ),
      ),
    ),
  );
}
