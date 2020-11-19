part of 'pages.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      final Duration duration = Duration(seconds: 3);

      Timer(duration, () {
        Get.to(SignInPage());
      });
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 250,
              height: 250,
              child: Image(
                image: AssetImage('assets/logo.png'),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'E-Course',
              style: blackFontStyle.copyWith(
                  fontSize: 30, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              'The place where you can learn at\nanywhere, anytime with one click',
              style: blackFontStyleM,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
