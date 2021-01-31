part of '../views.dart';

class HomeDashboard extends StatefulWidget {
  @override
  _HomeDashboardState createState() => _HomeDashboardState();
}

class _HomeDashboardState extends State<HomeDashboard> {
  ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return GeneralPage(
      title: 'Dashboard',
      child: VStack([
        GeneralCard(
                child: 'Semester - Ganjil TA. 2020/2021'
                    .text
                    .xl
                    .textStyle(generalStyle)
                    .make()
                    .p16())
            .p16()
      ]),
    );
  }
}
