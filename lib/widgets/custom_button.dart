part of 'widgets.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final Function onTap;
  final Color color;

  const CustomButton({Key key, this.title, this.onTap, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(100),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
            hoverColor: Colors.white,
            onTap: onTap,
            child: VxBox(
                    child: title.text.xs
                        .textStyle(buttonText)
                        .capitalize
                        .makeCentered()
                        .pSymmetric(v: 6, h: 20))
                .rounded
                .withGradient(LinearGradient(
                    colors: [color, color.withOpacity(.8)],
                    begin: Alignment.bottomRight,
                    end: Alignment.topLeft))
                .make()),
      ),
    );
  }
}
