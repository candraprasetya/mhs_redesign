part of 'widgets.dart';

class GeneralPage extends StatefulWidget {
  final String title;
  final Widget child;

  const GeneralPage({Key key, this.title, this.child}) : super(key: key);
  @override
  _GeneralPageState createState() => _GeneralPageState();
}

class _GeneralPageState extends State<GeneralPage> {
  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (context, innerBoxIsScrolled) {
        return <Widget>[
          CupertinoSliverNavigationBar(
            border: Border(),
            largeTitle: Text(
              widget.title,
              style: headlinePage,
            ),
            backgroundColor: CupertinoColors.white,
          )
        ];
      },
      body: widget.child,
    );
  }
}
