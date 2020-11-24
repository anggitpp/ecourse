part of 'widgets.dart';

class CourseDetailList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Transform.rotate(
              angle: math.pi / 180 * 90,
              child: Icon(Icons.play_circle_filled, color: mainColor, size: 30),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'First thing you must know',
              style: blackFontStyleM.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.only(left: 40),
          child: Text(
            'In this section you learn the first thing you must know',
            style: greyFontStyle,
            overflow: TextOverflow.clip,
            maxLines: 3,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Transform.rotate(
              angle: 0,
              child: Icon(Icons.play_circle_filled, color: mainColor, size: 30),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Open Your Mind',
              style: blackFontStyleM.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Transform.rotate(
              angle: 0,
              child: Icon(Icons.play_circle_filled, color: mainColor, size: 30),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'First thing you must know',
              style: blackFontStyleM.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
