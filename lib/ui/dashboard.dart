//import 'dart:html';
import 'package:bid_right_mobile/assets.dart';
import 'package:bid_right_mobile/ui/account/account.dart';
import 'package:bid_right_mobile/ui/auction/search/auction_search.dart';
import 'package:bid_right_mobile/ui/auction/home_dashboard.dart';
import 'package:bid_right_mobile/util/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _currentIndex = 0;

  final List<Widget> _children = const [
    HomeDashboardScreen(),
    AuctionListScreen(),
    AccountScreen(),
  ];

  // helper function
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => SystemChannels.textInput.invokeMethod('TextInput.hide'),
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        appBar: AppBar(
          title: Image.asset(Assets.logoWhite,
            height: 32,
            fit: BoxFit.contain,
          ),
          elevation: 0,
        ),
        body: SafeArea(
          child: PopScope(
            canPop: _currentIndex == 0,
            onPopInvoked: (didPop) {
              if (!didPop) {
                onTabTapped(0);
              }
            },
            child: _children[_currentIndex],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            onTap: onTabTapped,
            currentIndex: _currentIndex,
            selectedItemColor: BRColors.btGreen,
            unselectedItemColor: BRColors.trGray,
            showUnselectedLabels: true,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: Builder(builder: (context) {
                  return SvgPicture.asset(
                    VectorAssets.home,
                    colorFilter: ColorFilter.mode(
                      IconTheme.of(context).color!,
                      BlendMode.srcIn,
                    ),
                    height: 30,
                    width: 30,
                  );
                }),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Builder(builder: (context) {
                  return CustomPaint(
                    painter:
                        _SearchCustomPainter(color: IconTheme.of(context).color!),
                    size: const Size.square(42),
                  );
                }),
                label: '',
                tooltip: 'Search',
              ),
              BottomNavigationBarItem(
                icon: Builder(builder: (context) {
                  return SvgPicture.asset(
                    VectorAssets.settings,
                    colorFilter: ColorFilter.mode(
                      IconTheme.of(context).color!,
                      BlendMode.srcIn,
                    ),
                    height: 30,
                    width: 30,
                  );
                }),
                label: 'Settings',
              ),
            ]),
      ),
    );
  }
}

class _SearchCustomPainter extends CustomPainter {
  final Color color;

  const _SearchCustomPainter({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    Paint outerPaint = Paint()..style = PaintingStyle.fill;
    outerPaint.color = color;
    canvas.drawCircle(Offset(size.width * 0.5000000, size.height * 0.5000000),
        size.width * 0.5000000, outerPaint);

    Path searchPath = Path();
    searchPath.moveTo(size.width * 0.7079762, size.height * 0.6558810);
    searchPath.lineTo(size.width * 0.6246429, size.height * 0.5725476);
    searchPath.arcToPoint(
        Offset(size.width * 0.6103571, size.height * 0.5666905),
        radius: Radius.elliptical(
            size.width * 0.02002381, size.height * 0.02002381),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    searchPath.lineTo(size.width * 0.5967381, size.height * 0.5666905);
    searchPath.arcToPoint(
        Offset(size.width * 0.5666667, size.height * 0.5967619),
        radius:
            Radius.elliptical(size.width * 0.1736429, size.height * 0.1736429),
        rotation: 0,
        largeArc: true,
        clockwise: false);
    searchPath.lineTo(size.width * 0.5666667, size.height * 0.6103810);
    searchPath.arcToPoint(
        Offset(size.width * 0.5725238, size.height * 0.6246667),
        radius: Radius.elliptical(
            size.width * 0.02002381, size.height * 0.02002381),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    searchPath.lineTo(size.width * 0.6558571, size.height * 0.7080000);
    searchPath.arcToPoint(
        Offset(size.width * 0.6841667, size.height * 0.7080000),
        radius: Radius.elliptical(
            size.width * 0.01995238, size.height * 0.01995238),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    searchPath.lineTo(size.width * 0.7078095, size.height * 0.6843571);
    searchPath.arcToPoint(
        Offset(size.width * 0.7078095, size.height * 0.6559524),
        radius: Radius.elliptical(
            size.width * 0.02014286, size.height * 0.02014286),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    searchPath.close();
    searchPath.moveTo(size.width * 0.4600238, size.height * 0.5667857);
    searchPath.arcToPoint(
        Offset(size.width * 0.5669286, size.height * 0.4598810),
        radius:
            Radius.elliptical(size.width * 0.1069048, size.height * 0.1069048),
        rotation: 0,
        largeArc: true,
        clockwise: true);
    searchPath.arcToPoint(
        Offset(size.width * 0.4600238, size.height * 0.5667857),
        radius:
            Radius.elliptical(size.width * 0.1068333, size.height * 0.1068333),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    searchPath.close();

    Paint searchPaint = Paint()..style = PaintingStyle.fill;
    searchPaint.color = Colors.white;
    canvas.drawPath(searchPath, searchPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return oldDelegate is! _SearchCustomPainter || oldDelegate.color != color;
  }
}
