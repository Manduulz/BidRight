import 'package:bid_right_mobile/models/property.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import 'auction_cubit.dart';

class AuctionDetailSummary extends StatelessWidget {
  const AuctionDetailSummary({super.key});

  @override
  Widget build(BuildContext context) {
    final lot = context
        .select<AuctionCubit, Lot?>((cubit) => cubit.state.lot.valueOrNull);

    if (lot == null) {
      return const SizedBox.shrink();
    }

    final property = context.select<AuctionCubit, Property?>(
            (cubit) => cubit.state.property.valueOrNull);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (lot.startingBid != null)
          _InfoRow(
            labelText: 'Starting Bid',
            valueText: NumberFormat.simpleCurrency(name: 'USD')
                .format(lot.startingBid!),
          ),
        if (lot.requiredDownPayment != null)
          _InfoRow(
            labelText: 'Required Down Payment',
            valueText: '${lot.requiredDownPayment}%',
          ),
        if (property != null)
          _InfoRow(
              labelText: 'Estimated Value',
              valueText: property.valuation == null || property.valuation == '0'
                  ? 'TBD'
                  : property.valuation!),
        if (lot.property.images.isNotEmpty)
          _ImageSection(images: lot.property.images)
      ],
    );
  }
}

class _InfoRow extends StatelessWidget {
  final String labelText;
  final String valueText;

  const _InfoRow({
    Key? key,
    required this.labelText,
    required this.valueText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(labelText, style: Theme
              .of(context)
              .textTheme
              .bodyLarge),
          Text(valueText, style: Theme
              .of(context)
              .textTheme
              .titleSmall),
        ],
      ),
    );
  }
}

class _ImageSection extends StatefulWidget {
  const _ImageSection({super.key, required this.images});

  final List<PropertyImage> images;

  @override
  State<_ImageSection> createState() => _ImageSectionState();
}

class _ImageSectionState extends State<_ImageSection> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemExtent: 300,
        padding: const EdgeInsets.all(4),
        itemCount: widget.images.length,
        itemBuilder: (context, index) =>
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Center(
                child: CachedNetworkImage(
                  imageUrl: widget.images[index].url,
                ),
              ),
            ),
      ),
    );
  }
}
