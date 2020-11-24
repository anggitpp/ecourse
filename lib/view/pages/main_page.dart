part of 'pages.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backColor,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SafeArea(
                  child: Container(
                    height: 20,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: defaultMargin),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage('assets/profile.jpg'),
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              SizedBox(width: 15),
                              Text(
                                'Hi, Anggit!',
                                style: blackFontStyleL.copyWith(
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          Container(
                            child: Icon(
                              MdiIcons.bellOutline,
                              size: 24,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(SearchPage());
                        },
                        child: TextField(
                          enabled: false,
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.search,
                              color: greyColor,
                            ),
                            hintText: 'Search here..',
                            hintStyle: TextStyle(color: mainColor),
                            disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(color: greyColor),
                            ),
                            contentPadding: EdgeInsets.symmetric(vertical: 5),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: defaultMargin),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Most Popular',
                        style: blackFontStyleM.copyWith(
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'show all',
                        style: blackFontStyle.copyWith(
                            color: mainColor, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 210,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                          margin: EdgeInsets.only(left: defaultMargin - 5),
                          child: CourseCard()),
                      Container(
                          margin: EdgeInsets.only(
                              left: 10, right: defaultMargin - 5),
                          child: CourseCard()),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: defaultMargin),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Based on your interest',
                        style: blackFontStyleM.copyWith(
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'show all',
                        style: blackFontStyle.copyWith(
                            color: mainColor, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 210,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                          margin: EdgeInsets.only(left: defaultMargin - 5),
                          child: CourseCard()),
                      Container(
                          margin: EdgeInsets.only(
                              left: 10, right: defaultMargin - 5),
                          child: CourseCard()),
                    ],
                  ),
                ),
                SizedBox(height: 65),
              ],
            ),
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
                  Icon(Icons.home, size: 32, color: mainColor),
                  GestureDetector(
                      onTap: () {
                        Get.to(CoursePage());
                      },
                      child: Icon(Icons.school, size: 32)),
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
