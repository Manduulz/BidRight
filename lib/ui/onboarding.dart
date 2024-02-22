import 'package:bid_right_mobile/assets.dart';
import 'package:bid_right_mobile/navigation/app_state.dart';
import 'package:bid_right_mobile/navigation/navigation_cubit.dart';
import 'package:flutter/material.dart';
import 'package:bid_right_mobile/util/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final controller = PageController();
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      final page = controller.page?.round();
      if (page != null && page != currentPage) {
        setState(() => currentPage = page);
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BRColors.bglightBlue,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 32),
                child: Image.asset(Assets.fullLogoColor, width: 240),
              ),
              Stack(
                children: [
                  Positioned.fill(
                    child: PageView.builder(
                        controller: controller,
                        itemCount: _pages.length,
                        itemBuilder: (context, index) {
                          final page = _pages[index];
                          return _OnboardingPageWidget(page: page);
                        }),
                  ),
                  // Use largest height of all pages
                  for (final page in _pages)
                    Opacity(
                        opacity: 0,
                        child: IgnorePointer(
                            child: _OnboardingPageWidget(page: page))),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.circle,
                      color:
                          currentPage == 0 ? BRColors.btGreen : BRColors.trGray,
                      size: 12.0,
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Icon(
                      Icons.circle,
                      color:
                          currentPage == 1 ? BRColors.btGreen : BRColors.trGray,
                      size: 12.0,
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Icon(
                      Icons.circle,
                      color:
                          currentPage == 2 ? BRColors.btGreen : BRColors.trGray,
                      size: 12.0,
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Container(
                width: MediaQuery.of(context).size.width / 1.4,
                //  height: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: BRColors.btGreen,
                ),
                child: MaterialButton(
                  onPressed: () {
                    context
                        .read<NavigationCubit>()
                        .moveToScreen(Screens.register);
                  },
                  child: const Text(
                    'Get started',
                    style: TextStyle(fontSize: 14.0, color: BRColors.white),
                  ),
                ),
              ),
              //  CustomButton('Get started','_getRegister'),
              const SizedBox(
                height: 20.0,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 1.4,
                height: 35,
                child: OutlinedButton(
                  child: const Text(
                    'Sign In',
                    style: TextStyle(fontSize: 14.0, color: BRColors.btDarkBlue),
                  ),
                  onPressed: () {
                    context.read<NavigationCubit>().moveToScreen(Screens.login);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _OnboardingPageWidget extends StatelessWidget {
  const _OnboardingPageWidget({
    Key? key,
    required this.page,
  }) : super(key: key);

  final _OnboardingPage page;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SvgPicture.asset(page.asset),
        Text(
          page.header,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        Text(
          page.body,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ],
    );
  }
}

const _pages = <_OnboardingPage>[
  _OnboardingPage(
    VectorAssets.onboarding1,
    'Virtual Auctions',
    'Conduct auction in-person, online, or a hybrid of both',
  ),
  _OnboardingPage(
    VectorAssets.onboarding2,
    'Integrated Authentication',
    'BidRight utilizes a financial services data network for '
        'instant identity and asset verification.',
  ),
  _OnboardingPage(
    VectorAssets.onboarding3,
    'Secure Bidding',
    'Our bidding process is secured using rule-based algorithms '
        'and artificial intelligence.',
  ),
];

class _OnboardingPage {
  final String asset;
  final String header;
  final String body;

  const _OnboardingPage(this.asset, this.header, this.body);
}
