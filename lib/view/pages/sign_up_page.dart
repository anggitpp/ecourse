part of 'pages.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SafeArea(
            child: SizedBox(
              height: 20,
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              margin: EdgeInsets.only(left: defaultMargin),
              width: 24,
              height: 24,
              child: Icon(MdiIcons.arrowLeft),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            margin: EdgeInsets.only(left: defaultMargin, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Create Your Account',
                  style: blackFontStyleL.copyWith(fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  'Sign up and start learning',
                  style: greyFontStyle.copyWith(fontSize: 14),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 90,
                height: 104,
                child: Stack(
                  children: [
                    Align(
                      child: Container(
                        width: 90,
                        height: 90,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/user_pic.png'),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        width: 24,
                        height: 24,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/btn_add_photo.png'),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
