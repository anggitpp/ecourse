part of 'pages.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backColor,
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
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage('assets/profile.jpg'),
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
                            image: AssetImage('assets/btn_remove_photo.png'),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: defaultMargin),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: mainColor),
                    ),
                    hintText: 'Full Name',
                    hintStyle: blackFontStyleM.copyWith(color: mainColor),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: mainColor),
                    ),
                    hintText: 'Email Address',
                    hintStyle: blackFontStyleM.copyWith(color: mainColor),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: mainColor),
                    ),
                    hintText: 'Password',
                    hintStyle: blackFontStyleM.copyWith(color: mainColor),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: mainColor),
                    ),
                    hintText: 'Confirm Password',
                    hintStyle: blackFontStyleM.copyWith(color: mainColor),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                FloatingActionButton(
                  onPressed: () {},
                  elevation: 0,
                  backgroundColor: mainColor,
                  child: Icon(MdiIcons.arrowRight),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
