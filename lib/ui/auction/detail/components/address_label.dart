import 'package:bid_right_mobile/models/address.dart';
import 'package:flutter/material.dart';

class AuctionAddressLabel extends StatelessWidget {
  const AuctionAddressLabel({
    Key? key,
    required this.address,
    this.textColor,
  }) : super(key: key);

  final Address address;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle.merge(
      style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: textColor),
      textWidthBasis: TextWidthBasis.longestLine,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            address.streetLine1,
            style: Theme.of(context)
                .textTheme
                .titleSmall!
                .copyWith(color: textColor),
          ),
          if (address.streetLine2 != null && address.streetLine2!.isNotEmpty)
            Text(address.streetLine2!),
          Text(address.cityLine),
          if (address.county != null)
            Text(address.county!),
        ],
      ),
    );
  }
}

class AuctionWinnerAddressLabel extends StatelessWidget {
  const AuctionWinnerAddressLabel({super.key, required this.address});

  final Address address;

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle.merge(
      style: Theme.of(context).textTheme.titleLarge,
      textWidthBasis: TextWidthBasis.longestLine,
      textAlign: TextAlign.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(address.streetLine1),
          if (address.streetLine2 != null && address.streetLine2!.isNotEmpty)
            Text(address.streetLine2!),
          Text(address.cityLine),
          if (address.county != null)
            Text(address.county!),
        ],
      ),
    );
  }
}
