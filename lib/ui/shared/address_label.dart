import 'package:bid_right_mobile/models/address.dart';
import 'package:bid_right_mobile/util/theme.dart';
import 'package:flutter/material.dart';

class AddressLabel extends StatelessWidget {
  const AddressLabel({
    Key? key,
    required this.address,
  }) : super(key: key);

  final Address address;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          address.streetLine1.toUpperCase(),
          style: const TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w600,
            color: BRColors.fnligtBlack,
          ),
        ),
        if (address.streetLine2 != null &&
            address.streetLine2!.isNotEmpty)
          Text(
            address.streetLine2!.toUpperCase(),
            style: const TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.bold,
              color: BRColors.fnligtBlack,
            ),
          ),
        Text(
          address.cityLine.toUpperCase(),
          style: const TextStyle(
            fontSize: 12.0,
            color: BRColors.fnligtBlack,
          ),
        ),
        if (address.county != null)
          Text(
            address.county!.toUpperCase(),
            style: const TextStyle(
              fontSize: 12.0,
              color: BRColors.fnligtBlack,
            ),
          )
      ],
    );
  }
}
