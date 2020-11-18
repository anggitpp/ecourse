part of 'widgets.dart';

class CourseCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      clipBehavior: Clip.antiAlias,
      elevation: 3,
      child: Column(
        children: [
          Container(
            height: 125,
            width: 250,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://s3-ap-southeast-2.amazonaws.com/geg-gug-webapp/images/1557364192-work_while_you_study_banner.jpg'),
              ),
            ),
          ),
          Container(
            width: 250,
            height: 75,
            padding: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 7),
            decoration: BoxDecoration(
              color: backColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Bussiness Anaylist in 1 Week - Bussiness',
                  overflow: TextOverflow.clip,
                  maxLines: 2,
                  style: blackFontStyle.copyWith(
                      fontWeight: FontWeight.bold, fontSize: 14),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Icon(
                            MdiIcons.poll,
                            size: 18,
                            color: mainColor,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            'Beginner',
                            style: greyFontStyle,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Icon(
                            MdiIcons.clockOutline,
                            size: 18,
                            color: mainColor,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            '5H 10 Min',
                            style: greyFontStyle,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
