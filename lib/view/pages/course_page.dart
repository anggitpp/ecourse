part of 'pages.dart';

class CoursePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backColor,
      body: Stack(
        children: [
          Column(
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
                        style: blackFontStyleL.copyWith(
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(),
                  ],
                ),
              ),
              SizedBox(
                height: 23,
              ),
              // Image(
              //   image: AssetImage('assets/empty_course.png'),
              // ),
              // Text(
              //   'Ups..',
              //   style: blackFontStyleL.copyWith(
              //       fontSize: 30, fontWeight: FontWeight.bold),
              // ),
              // SizedBox(
              //   height: 10,
              // ),
              // Text(
              //   'Seems like you have not joined course, yet..',
              //   style: blackFontStyleL,
              //   textAlign: TextAlign.center,
              // ),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: defaultMargin, vertical: 15 / 2),
                child: CoursePageCard(),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: defaultMargin, vertical: 15 / 2),
                child: CoursePageCard(),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: defaultMargin, vertical: 15 / 2),
                child: CoursePageCard(),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: defaultMargin, vertical: 15 / 2),
                child: CoursePageCard(),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 26),
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.home, size: 32),
                  Icon(Icons.school, size: 32, color: mainColor),
                  Icon(Icons.person, size: 32),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
