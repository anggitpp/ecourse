part of 'pages.dart';

class PopularInterestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: backColor,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    return SafeArea(
      child: Scaffold(
        backgroundColor: backColor,
        body: Column(
          children: [
            Container(
              margin:
                  EdgeInsets.symmetric(horizontal: defaultMargin, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    MdiIcons.arrowLeft,
                    size: 24,
                  ),
                  Text(
                    'Popular',
                    style:
                        blackFontStyleL.copyWith(fontWeight: FontWeight.bold),
                  ),
                  Icon(MdiIcons.sortVariant),
                ],
              ),
            ),
            SizedBox(height: 15),
            PopularInterestList(),
            SizedBox(height: 15),
            PopularInterestList(),
            SizedBox(height: 15),
            PopularInterestList(),
          ],
        ),
      ),
    );
  }
}
