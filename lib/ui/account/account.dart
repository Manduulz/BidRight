import 'package:bid_right_mobile/assets.dart';
import 'package:bid_right_mobile/navigation/app_state.dart';
import 'package:bid_right_mobile/navigation/navigation_cubit.dart';
import 'package:bid_right_mobile/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:bid_right_mobile/util/theme.dart';
import 'package:bid_right_mobile/navigation/routes.dart' as routes;
import 'package:flutter_svg/flutter_svg.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:provider/provider.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  final _scrollController = ScrollController();

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  'Account Settings',
                  style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: BRColors.fnligtBlack),
                ),
                const Spacer(),
                SvgPicture.asset(VectorAssets.settings,
                    colorFilter: const ColorFilter.mode(
                      BRColors.btGreen,
                      BlendMode.srcIn,
                    )),
              ],
            ),
            const SizedBox(height: 10),
            Expanded(
              child: Scrollbar(
                controller: _scrollController,
                thumbVisibility: true,
                child: ListView(
                  controller: _scrollController,
                  children: [
                    BRForwardButton(
                      onTap: () {
                        Navigator.of(context).pushNamed(routes.personalInfo);
                      },
                      child: const Text('Personal Information'),
                    ),
                    BRForwardButton(
                      onTap: () {
                        Navigator.of(context).pushNamed(routes.twoFactorSetup);
                      },
                      child: const Text('Two-factor Authentication'),
                    ),
                    const Divider(
                      height: 40.0,
                      thickness: 2.0,
                      color: BRColors.bgLightGray,
                    ),
                    BRForwardButton(
                      onTap: () {
                        Navigator.of(context)
                            .pushNamed(routes.purchaseProfiles);
                      },
                      child: const Text('Purchase Profiles'),
                    ),
                    BRForwardButton(
                      onTap: () {
                        Navigator.of(context).pushNamed(routes.verifiedBalance);
                      },
                      child:
                          const Text('Linked Accounts'),
                    ),
                    BRForwardButton(
                      onTap: () {
                        Navigator.of(context).pushNamed(routes.myWinning);
                      },
                      child: const Text(
                        'My Winnings',
                        style: TextStyle(
                            fontSize: 14.0, color: BRColors.bgDarkBlue),
                      ),
                    ),
                    const Divider(
                      height: 40.0,
                      thickness: 2.0,
                      color: BRColors.bgLightGray,
                    ),
                    BRForwardButton(
                      onTap: () {
                        Navigator.of(context).pushNamed(routes.helpCenter);
                      },
                      child: Row(
                        children: [
                          SvgPicture.asset(VectorAssets.helpCenter),
                          const Text('  Help Center'),
                        ],
                      ),
                    ),
                    const Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 4,
                        ),
                        child: _VersionText(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 35,
              child: OutlinedButton(
                child: const Text(
                  'Log out',
                  style: TextStyle(fontSize: 14.0, color: BRColors.btDarkBlue),
                ),
                onPressed: () {
                  context
                      .read<NavigationCubit>()
                      .moveToScreen(Screens.loginNotImmediate);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _VersionText extends StatefulWidget {
  const _VersionText({Key? key}) : super(key: key);

  @override
  _VersionTextState createState() => _VersionTextState();
}

class _VersionTextState extends State<_VersionText> {
  PackageInfo? packageInfo;

  @override
  void initState() {
    super.initState();
    PackageInfo.fromPlatform()
        .then((value) => setState(() => packageInfo = value));
  }

  @override
  Widget build(BuildContext context) {
    final packageInfo = this.packageInfo;
    if (packageInfo == null) {
      return const SizedBox.shrink();
    } else {
      return Text(
        "v ${packageInfo.version}",
        style: const TextStyle(fontSize: 12.0, color: BRColors.trGray),
      );
    }
  }
}
