part of 'views.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final GlobalKey<SideMenuState> _sideMenuKey = GlobalKey<SideMenuState>();

  final GlobalKey<SideMenuState> _endSideMenuKey = GlobalKey<SideMenuState>();

  int selected = 0;
  String amikomLogo = 'assets/images/amikom.png';
  PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: selected);
  }

  void changePage(int page) {
    setState(() {
      selected = page;
    });
    pageController.animateToPage(page,
        duration: Duration(milliseconds: 200), curve: Curves.easeInOut);
  }

  List<Widget> homeViews = [
    HomeDashboard(),
    HomeEmail(),
    HomeKuliah(),
    HomeUjian(),
    HomeBimbingan(),
    HomeYudisium(),
    HomeWisuda(),
    HomePerpustakaan(),
    HomePembayaran()
  ];

  @override
  Widget build(BuildContext context) {
    return SideMenu(
      key: _endSideMenuKey,
      inverse: true, // end side menu
      background: colorku.primary,
      type: SideMenuType.slideNRotate,
      menu: buildMenu(),
      child: SideMenu(
          key: _sideMenuKey,
          menu: buildMenu(),
          closeIcon: Icon(
            CupertinoIcons.xmark,
            color: Vx.red500,
          ),
          background: Color(0xFFFAFAFC),
          type: SideMenuType.slideNRotate,
          child: CupertinoPageScaffold(
            backgroundColor: Vx.white,
            navigationBar: CupertinoNavigationBar(
              backgroundColor: colorku.primary,
              leading: HStack([
                IconButton(
                  icon: Icon(
                    CupertinoIcons.bars,
                    color: Vx.white,
                  ),
                  onPressed: () {
                    final _state = _sideMenuKey.currentState;
                    if (_state.isOpened)
                      _state.closeSideMenu(); //
                    else
                      _state.openSideMenu();
                  },
                ),
                Image.asset(
                  amikomLogo,
                ).p12(),
                (context.isMobile)
                    ? SizedBox()
                    : 'Universitas Amikom Yogyakarta'
                        .text
                        .xs
                        .textStyle(amikomNavBar)
                        .capitalize
                        .make()
              ]),
              trailing: GestureDetector(
                child: CustomButton(
                  color: colorku.red,
                  title: 'Keluar',
                  onTap: () {
                    showCupertinoDialog(
                        context: context,
                        builder: (context) {
                          return CupertinoAlertDialog(
                            title: Text("Peringatan"),
                            content: Text("Apakah kamu yakin ingin keluar?"),
                            actions: <Widget>[
                              CupertinoDialogAction(
                                child: Text("Tidak"),
                                onPressed: () {
                                  Get.back();
                                },
                              ),
                              CupertinoDialogAction(
                                child: Text("Saya ingin keluar"),
                                onPressed: () {
                                  Get.back();
                                },
                                isDestructiveAction: true,
                              ),
                            ],
                          );
                        });
                  },
                ).pSymmetric(v: 10).w(100),
              ),
            ),
            child: PageView(
              children: homeViews,
              controller: pageController,
              onPageChanged: (value) {
                setState(() {
                  selected = value;
                });
              },
            ),
          )),
    );
  }

  Widget buildMenu() {
    return VStack(
      [
        VStack(
          [
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.network(
                'http://amikom.ac.id/public/fotomhs/2017/17_11_1370.jpg',
                fit: BoxFit.cover,
                height: 100,
                width: 100,
              ),
            ),
            16.heightBox,
            'Candra R Prasetya'.text.capitalize.textStyle(profileName).make(),
            '17.11.1370'.text.capitalize.textStyle(profileNim).make(),
            10.heightBox,
            HStack([
              Expanded(
                  flex: 1,
                  child: CustomButton(
                    color: Vx.yellow500,
                    title: 'Lihat Profile',
                    onTap: () {},
                  )),
              6.widthBox,
              Expanded(
                  flex: 1,
                  child: CustomButton(
                    color: Vx.blue600,
                    title: 'Foto Profile',
                    onTap: () {},
                  )),
            ]),
            16.heightBox,
            VStack([
              SlideButton(
                onTap: () {
                  changePage(0);
                },
                color: (selected == 0) ? colorku.background : Vx.white,
                textColor: (selected == 0) ? colorku.primary : Vx.gray600,
                title: 'Dashboard',
                icon: CupertinoIcons.app_badge,
              ),
              SlideButton(
                onTap: () {
                  changePage(1);
                },
                color: (selected == 1) ? colorku.background : Vx.white,
                textColor: (selected == 1) ? colorku.primary : Vx.gray600,
                title: 'E-mail',
                icon: CupertinoIcons.mail,
              ),
              SlideButton(
                onTap: () {
                  changePage(2);
                },
                color: (selected == 2) ? colorku.background : Vx.white,
                textColor: (selected == 2) ? colorku.primary : Vx.gray600,
                title: 'Kuliah',
                icon: CupertinoIcons.device_laptop,
              ),
              SlideButton(
                onTap: () {
                  changePage(3);
                },
                color: (selected == 3) ? colorku.background : Vx.white,
                textColor: (selected == 3) ? colorku.primary : Vx.gray600,
                title: 'Ujian',
                icon: CupertinoIcons.rectangle_badge_checkmark,
              ),
              SlideButton(
                onTap: () {
                  changePage(4);
                },
                color: (selected == 4) ? colorku.background : Vx.white,
                textColor: (selected == 4) ? colorku.primary : Vx.gray600,
                title: 'Bimbingan',
                icon: CupertinoIcons.bubble_middle_bottom,
              ),
              SlideButton(
                onTap: () {
                  changePage(5);
                },
                color: (selected == 5) ? colorku.background : Vx.white,
                textColor: (selected == 5) ? colorku.primary : Vx.gray600,
                title: 'Yudisium',
                icon: CupertinoIcons.doc_append,
              ),
              SlideButton(
                onTap: () {
                  changePage(6);
                },
                color: (selected == 6) ? colorku.background : Vx.white,
                textColor: (selected == 6) ? colorku.primary : Vx.gray600,
                title: 'Wisuda',
                icon: CupertinoIcons.person_crop_rectangle,
              ),
              SlideButton(
                onTap: () {
                  changePage(7);
                },
                color: (selected == 7) ? colorku.background : Vx.white,
                textColor: (selected == 7) ? colorku.primary : Vx.gray600,
                title: 'Perpustakaan',
                icon: CupertinoIcons.book,
              ),
              SlideButton(
                onTap: () {
                  changePage(8);
                },
                color: (selected == 8) ? colorku.background : Vx.white,
                textColor: (selected == 8) ? colorku.primary : Vx.gray600,
                title: 'Pembayaran',
                icon: CupertinoIcons.tag,
              )
            ])
          ],
          alignment: MainAxisAlignment.center,
          crossAlignment: CrossAxisAlignment.center,
        )
      ],
      alignment: MainAxisAlignment.center,
      crossAlignment: CrossAxisAlignment.start,
    ).scrollVertical().p16();
  }
}
