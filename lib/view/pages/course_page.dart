part of 'pages.dart';

class CoursePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backColor,
      body: Center(
        child: Column(
          children: [
            SafeArea(
              child: SizedBox(
                height: 20,
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: defaultMargin),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    MdiIcons.arrowLeft,
                    size: 24,
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 20),
                    child: Text(
                      'Course',
                      style:
                          blackFontStyleL.copyWith(fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Image(
              image: AssetImage('assets/empty_course.png'),
            ),
            SizedBox(
              height: 25,
            ),
            Text('Ups..')
          ],
        ),
      ),
    );
  }
}
