import 'dart:io';

import 'package:bid_right_mobile/models/property.dart';
import 'package:bid_right_mobile/ui/auction/detail/auction_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

import 'address_label.dart';

class PropertySelector extends StatelessWidget {
  const PropertySelector({super.key, this.color});

  final Color? color;

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<AuctionCubit>();
    final state = cubit.state;

    return state.properties.maybeMap<Widget>(
      loaded: (loaded) {
        final properties = loaded.value;
        final currentProperty = state.property.valueOrNull;
        return Row(
          children: [
            if (currentProperty != null)
              IconButton(
                onPressed: () => _showOnMap(currentProperty),
                tooltip: 'Show on map',
                icon: Icon(Icons.location_on, color: color),
              ),
            Flexible(
              child: Builder(builder: (context) {
                if (properties.length <= 1) {
                  return currentProperty != null
                      ? Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: AuctionAddressLabel(
                            address: currentProperty.address,
                            textColor: color,
                          ),
                        )
                      : const SizedBox.shrink();
                }
                return ColoredBox(
                  color: Colors.black12,
                  child: DropdownButton<int>(
                    itemHeight: null,
                    value: state.selectedPropertyId,
                    isExpanded: true,
                    underline: const SizedBox(),
                    iconEnabledColor: Colors.white,
                    items: [
                      for (final property in properties)
                        DropdownMenuItem<int>(
                          value: property.id,
                          child: AuctionAddressLabel(
                            address: property.address,
                          ),
                        ),
                    ],
                    selectedItemBuilder: (context) => [
                      for (final property in properties)
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: AuctionAddressLabel(
                            address: property.address,
                            textColor: color,
                          ),
                        )
                    ],
                    onChanged: cubit.selectProperty,
                  ),
                );
              }),
            )
          ],
        );
      },
      loading: (_) => const Center(
        child: CircularProgressIndicator.adaptive(),
      ),
      orElse: () => const SizedBox.shrink(),
    );
  }

  Future<void> _showOnMap(Property property) async {
    await launchUrl(_mapUri(property));
  }

  Uri _mapUri(Property property) {
    if (Platform.isIOS || Platform.isMacOS) {
      return _appleMapUri(property);
    } else {
      return _geoMapUri(property);
    }
  }

  Uri _geoMapUri(Property property) {
    final latitude = property.latitude ?? 0;
    final longitude = property.longitude ?? 0;
    return Uri.parse('geo:$latitude,$longitude')
        .replace(queryParameters: {'q': property.address.toString()});
  }

  Uri _appleMapUri(Property property) {
    final latitude = property.latitude;
    final longitude = property.longitude;

    return Uri(
      scheme: 'http',
      host: 'maps.apple.com',
      queryParameters: {
        'address': property.address.toString(),
        if (latitude != null && longitude != null)
          'sll': '$latitude,$longitude',
      },
    );
  }
}
