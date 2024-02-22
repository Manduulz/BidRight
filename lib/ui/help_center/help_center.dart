import 'package:bid_right_mobile/assets.dart';
import 'package:bid_right_mobile/models/auction_host.dart';
import 'package:bid_right_mobile/models/help.dart';
import 'package:bid_right_mobile/ui/help_center/help_bloc.dart';
import 'package:bid_right_mobile/widgets/card_shadow.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:bid_right_mobile/util/theme.dart';
import 'package:bid_right_mobile/navigation/routes.dart' as routes;
import 'package:flutter_libphonenumber/flutter_libphonenumber.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class HelpCenterScreen extends StatefulWidget {
  const HelpCenterScreen({Key? key}) : super(key: key);

  @override
  State<HelpCenterScreen> createState() => _HelpCenterScreenState();
}

class _HelpCenterScreenState extends State<HelpCenterScreen> {
  @override
  void initState() {
    super.initState();
    context.read<HelpBloc>().loadData();
  }

  @override
  Widget build(BuildContext context) {
    final bloc = context.watch<HelpBloc>();

    return Scaffold(
      appBar: AppBar(elevation: 0),
      backgroundColor: BRColors.bglightBlue,
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Stack(
              children: [
                const Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  height: 200,
                  child: ColoredBox(
                    color: BRColors.bgDarkBlue,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 20, 60),
                      child: _HeaderContent(),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 160),
                  child: BRCard(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(VectorAssets.contactUs),
                              const SizedBox(
                                width: 20.0,
                              ),
                              const Text(
                                'Contact Us',
                                style: TextStyle(
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.bold,
                                    color: BRColors.fnligtBlack),
                              ),
                            ],
                          ),
                          const Text(
                            'For any additional questions, partnership requests or support please reach out to us below.',
                            style: TextStyle(
                                fontSize: 14.0, color: BRColors.trGray),
                          ),
                          GestureDetector(
                            onTap: () => launchUrl(
                                Uri.parse('mailto:support@bidright.com')),
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Email Support',
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold,
                                      color: BRColors.fnligtBlack),
                                ),
                                Text(
                                  'support@bidright.com',
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      color: BRColors.fnligtBlack),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                border:
                                    Border.all(color: BRColors.fnligtBlack)),
                            width: MediaQuery.of(context).size.width / 1.1,
                            height: 35,
                            child: TextButton(
                              child: const Text(
                                'Contact Us Form',
                                style: TextStyle(
                                    fontSize: 14.0, color: BRColors.btDarkBlue),
                              ),
                              onPressed: () {
                                Navigator.of(context)
                                    .pushNamed(routes.contactUs);
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Helpful Resources',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24.0, color: BRColors.bgDarkBlue),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(20),
            sliver: StreamBuilder<List<HelpResource>>(
              stream: bloc.resources,
              initialData: bloc.resources.valueOrNull,
              builder: (context, snapshot) {
                final resources = snapshot.data;
                if (resources == null) {
                  return const SliverToBoxAdapter(
                      child:
                          Center(child: CircularProgressIndicator.adaptive()));
                }

                return SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) =>
                        _ResourceCard(resource: resources[index]),
                    childCount: resources.length,
                  ),
                );
              },
            ),
          ),
          const SliverToBoxAdapter(
            child: Center(
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'Verified Auction Hosts',
                  style: TextStyle(fontSize: 24.0, color: BRColors.bgDarkBlue),
                ),
              ),
            ),
          ),
          StreamBuilder<List<VerifiedAuctionHost>>(
            stream: bloc.verifiedHosts,
            initialData: bloc.verifiedHosts.valueOrNull,
            builder: (context, snapshot) {
              final verifiedHosts = snapshot.data;
              if (verifiedHosts == null) {
                return const SliverToBoxAdapter(
                  child: Center(
                    child: CircularProgressIndicator.adaptive(),
                  ),
                );
              } else if (verifiedHosts.isEmpty) {
                return const SliverToBoxAdapter(
                  child: Center(
                    child: Text('No verified hosts'),
                  ),
                );
              }

              return SliverList(
                delegate: SliverChildBuilderDelegate(
                    (_, index) => _VerifiedHostCard(host: verifiedHosts[index]),
                    childCount: verifiedHosts.length),
              );
            },
          ),
        ],
      ),
    );
  }
}

class _HeaderContent extends StatelessWidget {
  const _HeaderContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: Center(
            child: Row(
              children: [
                SvgPicture.asset(
                  VectorAssets.helpCenter,
                  height: 48,
                  width: 48,
                  colorFilter: const ColorFilter.mode(
                    Colors.white,
                    BlendMode.srcIn,
                  ),
                ),
                const SizedBox(
                  width: 20.0,
                ),
                const Text(
                  'Help Center',
                  style: TextStyle(
                    fontSize: 48.0,
                    fontWeight: FontWeight.bold,
                    color: BRColors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
        const Text(
          'Learn more about BidRight and how we’re making the bidding process easier for buyers and sellers.',
          style: TextStyle(fontSize: 14.0, color: BRColors.white),
        ),
      ],
    );
  }
}

class _ResourceCard extends StatelessWidget {
  final HelpResource resource;

  const _ResourceCard({Key? key, required this.resource}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final link = resource.link;
    final uri = link == null ? null : Uri.tryParse(link);
    return BRCard(
      child: InkWell(
        onTap:
            uri != null && uri.scheme.isNotEmpty ? () => launchUrl(uri) : null,
        child: Padding(
          padding:
              const EdgeInsetsDirectional.only(top: 20, start: 20, bottom: 20),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      resource.title,
                      style: const TextStyle(
                          fontSize: 24.0, color: BRColors.fnligtBlack),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      resource.description,
                      style: const TextStyle(
                          fontSize: 14.0, color: BRColors.fnligtBlack),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.arrow_forward_ios),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _VerifiedHostCard extends StatelessWidget {
  const _VerifiedHostCard({Key? key, required this.host}) : super(key: key);

  final VerifiedAuctionHost host;

  @override
  Widget build(BuildContext context) {
    final hostUri = Uri.tryParse(host.url ?? '');
    return BRCard(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 160,
            child: Stack(
              children: [
                if (host.imageUrl != null)
                  Positioned.fill(
                    child: CachedNetworkImage(
                      imageUrl: host.imageUrl!,
                      fit: BoxFit.cover,
                    ),
                  )
                else
                  Container(
                    color: BRColors.bgLightGray,
                    alignment: Alignment.center,
                    child: const Text(
                      'PHOTO NOT AVAILABLE',
                      textAlign: TextAlign.center,
                    ),
                  ),
                if (host.logoUrl != null)
                  PositionedDirectional(
                    end: 16,
                    bottom: 16,
                    height: 48,
                    width: 48,
                    child: Container(
                      color: Colors.white,
                      padding: const EdgeInsets.all(8),
                      child: CachedNetworkImage(imageUrl: host.logoUrl!),
                    ),
                  )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  host.name ?? '',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Text(host.description ?? ''),
                if (hostUri != null)
                  GestureDetector(
                    onTap: () => launchUrl(hostUri),
                    child: const Text('\u{1F517} Visit website'),
                  ),
                if (host.phone != null)
                  Text('Tel: ${FlutterLibphonenumber().formatNumberSync(
                    host.phone!,
                    phoneNumberFormat: PhoneNumberFormat.national,
                    country: const CountryWithPhoneCode.us(),
                  )}'),
                if (host.email != null) Text('Email: ${host.email}'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
