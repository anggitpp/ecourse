part of 'pages.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    ));
  }
}
