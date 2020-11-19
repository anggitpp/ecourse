part of 'widgets.dart';

class CoursePageCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
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
          height: 80,
          width:
              MediaQuery.of(context).size.width - 80 - 10 - (2 * defaultMargin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Bussiness',
                style: blackFontStyle.copyWith(color: mainColor, fontSize: 10),
              ),
              Text(
                'Bussiness Anaylist in 1 Week hehehe ',
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: blackFontStyleM.copyWith(fontWeight: FontWeight.w600),
              ),
              Text(
                'In this section you learn the first hehehehehehehehehehehehe ',
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: greyFontStyle,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '3 of 24',
                    style: blackFontStyle.copyWith(color: mainColor),
                  ),
                  Row(
                    children: [
                      Container(
                        width: 40,
                        height: 8,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(2),
                            bottomLeft: Radius.circular(2),
                          ),
                          color: "#7FD77F".toColor(),
                        ),
                      ),
                      Container(
                        width: 40,
                        height: 8,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(2),
                            bottomRight: Radius.circular(2),
                          ),
                          color: Colors.white,
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
