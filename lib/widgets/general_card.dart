part of 'widgets.dart';

class GeneralCard extends StatelessWidget {
  final Widget child;

  const GeneralCard({Key key, @required this.child})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: child,
    )
        .white
        .withShadow([
          BoxShadow(
              color: colorku.blueGrey.withOpacity(.2),
              blurRadius: 16,
              offset: Offset(4, 4))
        ])
        .withRounded(value: 10)
        .make();
  }
}
