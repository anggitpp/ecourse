part of 'pages.dart';

class SelectInterestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backColor,
      body: Column(
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
        ],
      ),
    );
  }
}
