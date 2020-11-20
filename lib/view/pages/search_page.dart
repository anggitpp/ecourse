part of 'pages.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backColor,
      body: Stack(
        children: [
          Column(
            children: [
              SafeArea(
                child: Container(
                  height: 20,
                  color: backColor,
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  margin: EdgeInsets.only(left: defaultMargin),
                  child: Icon(
                    MdiIcons.arrowLeft,
                    size: 24,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: defaultMargin,
                ),
                child: TextField(
                  autofocus: true,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: greyColor,
                    ),
                    hintText: 'Search here..',
                    hintStyle: TextStyle(color: mainColor),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: greyColor),
                    ),
                    contentPadding: EdgeInsets.symmetric(vertical: 5),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: greyColor, width: 2),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.fromLTRB(defaultMargin, 150, defaultMargin, 0),
              width: double.infinity,
              child: ListView(
                shrinkWrap: true,
                children: [
                  SearchPageCard(),
                  SizedBox(height: 10),
                  SearchPageCard(),
                  SizedBox(height: 10),
                  SearchPageCard(),
                  SizedBox(height: 10),
                  SearchPageCard(),
                  SizedBox(height: 10),
                  SearchPageCard(),
                  SizedBox(height: 10),
                  SearchPageCard(),
                  SizedBox(height: 10),
                  SearchPageCard(),
                  SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
