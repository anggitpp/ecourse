part of 'pages.dart';

class CourseDetailPage extends StatelessWidget {
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
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  margin: EdgeInsets.only(left: defaultMargin, top: 20),
                  child: Icon(
                    MdiIcons.arrowLeft,
                    size: 24,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 250,
                    margin: EdgeInsets.symmetric(horizontal: defaultMargin),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://s3-ap-southeast-2.amazonaws.com/geg-gug-webapp/images/1557364192-work_while_you_study_banner.jpg'),
                      ),
                    ),
                  ),
                  Container(
                    height: 280,
                    width:
                        MediaQuery.of(context).size.width - 2 * defaultMargin,
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        decoration:
                            BoxDecoration(shape: BoxShape.circle, boxShadow: [
                          BoxShadow(
                              blurRadius: 0.01,
                              offset: Offset(0, 1),
                              spreadRadius: -2,
                              color: Colors.black12),
                        ]),
                        child: Icon(
                          Icons.play_circle_filled,
                          size: 60,
                          color: mainColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: defaultMargin),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Business Analyst in  1 Week',
                      style:
                          blackFontStyleL.copyWith(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              MdiIcons.poll,
                              size: 26,
                              color: mainColor,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Beginner',
                              style: greyFontStyle.copyWith(fontSize: 15),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              MdiIcons.clockOutline,
                              size: 26,
                              color: mainColor,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '5H 10 Min',
                              style: greyFontStyle.copyWith(fontSize: 15),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CourseDetailList(),
                    // CourseDetailList(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
