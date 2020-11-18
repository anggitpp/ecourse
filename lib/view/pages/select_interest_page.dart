part of 'pages.dart';

class SelectInterestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List interest = [
      'Math',
      'Science',
      'Art',
      'Sport',
      'Language',
      'Architec',
      'Coding',
      'Multimedia'
    ];
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
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'One More Step',
                  style: blackFontStyleL.copyWith(fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  'And you ready to learn everything',
                  style: greyFontStyle.copyWith(fontSize: 14),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: defaultMargin),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                Text(
                  'What is your interest?',
                  style: blackFontStyleM.copyWith(fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 20,
                ),
                Wrap(
                  runSpacing: 40,
                  spacing: 8,
                  children: interest
                      .map(
                        (e) => Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('assets/' +
                                          e.toString().toLowerCase() +
                                          '.png'))),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(e),
                          ],
                        ),
                      )
                      .toList(),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  width: double.infinity,
                  height: 50,
                  child: RaisedButton(
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    color: mainColor,
                    child: Text(
                      'Create Your Account',
                      style: blackFontStyleL.copyWith(
                          fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
