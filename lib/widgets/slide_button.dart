part of 'widgets.dart';

class SlideButton extends StatelessWidget {
  final String title;
  final Color textColor;
  final int index;
  final Function onTap;
  final Color color;
  final IconData icon;

  const SlideButton(
      {Key key,
      this.index,
      this.title,
      this.onTap,
      this.color,
      this.icon,
      this.textColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          child: HStack(
            [
              Icon(
                icon,
                color: textColor,
              ),
              10.widthBox,
              title.text
                  .textStyle(buttonText.copyWith(color: textColor))
                  .capitalize
                  .make()
            ],
          ).pSymmetric(v: 10, h: 20),
        ),
      ),
    )).withRounded(value: 10).color(color).make().wFull(context).pOnly(top: 4);
  }
}
