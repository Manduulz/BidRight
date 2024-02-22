import 'package:bid_right_mobile/models/property.dart';
import 'package:bid_right_mobile/navigation/app_state.dart';
import 'package:bid_right_mobile/navigation/navigation_cubit.dart';
import 'package:bid_right_mobile/ui/auction/shared/property_info_row.dart';
import 'package:bid_right_mobile/ui/shared/address_label.dart';
import 'package:bid_right_mobile/util/theme.dart';
import 'package:bid_right_mobile/widgets/card_shadow.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class AuctionListTile extends StatelessWidget {
  final Lot lot;
  final VoidCallback? onTapPin;
  final bool isPinned;
  final bool isClickable;

  const AuctionListTile({
    Key? key,
    required this.lot,
    this.onTapPin,
    required this.isPinned,
    this.isClickable = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final property = lot.property;
    final images = property.images;

    return BRCard(
      //color: BRColors.white,
      child: InkWell(
        onTap: isClickable
            ? () {
                context.read<NavigationCubit>().moveToScreen(
                    Screens.lotDetail(lotId: lot.id, auctionId: lot.auctionId));
              }
            : null,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  _ImageCarousel(images: images),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AddressLabel(address: property.address),
                          if (property.valuation != null &&
                              property.valuation!.isNotEmpty)
                            Text(property.valuation!),
                          Text(lot.propertyCount == 1
                              ? "1 property"
                              : "${lot.propertyCount} properties"),
                          IntrinsicHeight(
                            child: Row(
                              children: [
                                Expanded(
                                  child: _InfoLabel(
                                    labelText: 'Starting Bid',
                                    infoText: NumberFormat.simpleCurrency(
                                            name: 'USD', decimalDigits: 0)
                                        .format(lot.startingBid),
                                  ),
                                ),
                                if (lot.actualStartTime != null)
                                  Expanded(
                                      child: _InfoLabel(
                                    labelText: 'Starting Time',
                                    infoText:
                                        _formatDateTime(lot.actualStartTime!),
                                  ))
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  if (isClickable)
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: onTapPin,
                          child: SvgPicture.asset(
                            isPinned
                                ? 'assets/pin-icon.svg'
                                : 'assets/unpin-icon.svg',
                            height: 24,
                            width: 24,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
            ColoredBox(
              color: const Color(0x0a666666),
              child: PropertyInfoRow(property: lot.property),
            ),
          ],
        ),
      ),
    );
  }
}

class PropertyListTile extends StatelessWidget {
  final Property property;
  final int lotId;
  final int auctionId;

  const PropertyListTile({
    Key? key,
    required this.property,
    required this.lotId,
    required this.auctionId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final images = property.images;

    return BRCard(
      //color: BRColors.white,
      child: InkWell(
        onTap: () {
          context.read<NavigationCubit>().moveToScreen(Screens.lotDetail(
              auctionId: auctionId, lotId: lotId, propertyId: property.id));
        },
        child: IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _ImageCarousel(images: images),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AddressLabel(address: property.address),
                      if (property.valuation != null &&
                          property.valuation!.isNotEmpty)
                        Text(property.valuation!),
                      PropertyInfoRow(property: property),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _InfoLabel extends StatelessWidget {
  final String labelText;
  final String infoText;

  const _InfoLabel({
    Key? key,
    required this.labelText,
    required this.infoText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: const TextStyle(fontSize: 12.0, color: BRColors.trGray),
        ),
        Text(
          infoText,
          style: const TextStyle(
            fontSize: 12.0,
            color: BRColors.fnligtBlack,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

class _ImageCarousel extends StatefulWidget {
  const _ImageCarousel({
    Key? key,
    required this.images,
  }) : super(key: key);

  final List<PropertyImage> images;

  @override
  State<_ImageCarousel> createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<_ImageCarousel> {
  int imageIndex = 0;

  @override
  Widget build(BuildContext context) {
    const size = Size(100, 120);
    const paddingRatio = 1.05;

    if (widget.images.isEmpty) {
      return SizedBox.fromSize(
        size: size,
        child: DecoratedBox(
          decoration: BoxDecoration(
            // borderRadius: BorderRadius.circular(8),
            color: Colors.grey.shade200,
          ),
        ),
      );
    }

    if (widget.images.length == 1) {
      return SizedBox.fromSize(
        size: size,
        child: CachedNetworkImage(
          imageUrl: widget.images.single.url,
          fit: BoxFit.cover,
        ),
      );
    }

    return Align(
      alignment: Alignment.topCenter,
      child: Stack(
        children: [
          SizedBox.fromSize(
            size: size,
            child: CarouselSlider.builder(
              options: CarouselOptions(
                aspectRatio: paddingRatio,
                viewportFraction: paddingRatio,
                onPageChanged: (page, _) => setState(() => imageIndex = page),
              ),
              itemCount: widget.images.length,
              itemBuilder: (context, index, _) {
                final image = widget.images[index];
                return FractionallySizedBox(
                  widthFactor: 1 / paddingRatio,
                  child: CachedNetworkImage(
                    imageUrl: image.url,
                    fit: BoxFit.cover,
                  ),
                );
              },
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: AnimatedSmoothIndicator(
                  activeIndex: imageIndex,
                  count: widget.images.length,
                  effect: const ScrollingDotsEffect(
                    dotHeight: 6,
                    dotWidth: 6,
                    spacing: 4,
                    activeDotColor: BRColors.btGreen,
                    maxVisibleDots: 5,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

String _formatDateTime(DateTime dateTime) {
  final localDateTime = dateTime.toLocal();
  final dateString = (localDateTime.year == DateTime.now().year)
      ? DateFormat.MMMd().format(localDateTime)
      : DateFormat.yMMMd().format(localDateTime);

  final timeString = DateFormat.jm().format(localDateTime);

  return '$dateString, $timeString';
}
