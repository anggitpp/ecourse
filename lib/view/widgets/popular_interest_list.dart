part of 'widgets.dart';

class PopularInterestList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: defaultMargin),
      child: Row(
        children: [
          Container(
            width: 70,
            height: 90,
            child: Card(
              elevation: 5,
              child: Image(
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://s3-ap-southeast-2.amazonaws.com/geg-gug-webapp/images/1557364192-work_while_you_study_banner.jpg'),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            width: MediaQuery.of(context).size.width - 2 * defaultMargin - 80,
            height: 85,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Business Analyst in  1 Week',
                  style: blackFontStyleM.copyWith(fontWeight: FontWeight.w600),
                  maxLines: 1,
                  overflow: TextOverflow.clip,
                ),
                Text(
                  'In this section you learn the first thing you must know',
                  style: greyFontStyle,
                  maxLines: 2,
                  overflow: TextOverflow.clip,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          MdiIcons.poll,
                          size: 20,
                          color: mainColor,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Beginner',
                          style: greyFontStyle,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          MdiIcons.clockOutline,
                          size: 20,
                          color: mainColor,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '5H 10 Min',
                          style: greyFontStyle,
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
