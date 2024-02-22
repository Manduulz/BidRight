import 'package:bid_right_mobile/ui/auction/shared/auction_list_tile.dart';
import 'package:bid_right_mobile/ui/property/property_list_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PropertyListScreen extends StatelessWidget {
  const PropertyListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<PropertyListCubit>();
    final propertyState = cubit.state.properties;
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: propertyState.map(
            uninitialized: (_) => const SizedBox.shrink(),
            loading: (_) => const Center(
              child: CircularProgressIndicator.adaptive(),
            ),
            error: (_) => const Text('Error'),
            loaded: (loaded) {
              final properties = loaded.value;
              if (properties.isEmpty) {
                return const Center(child: Text('No properties in lot'));
              }

              return ListView.builder(
                itemCount: properties.length,
                itemBuilder: (context, index) {
                  final property = properties[index];
                  return PropertyListTile(
                    property: property,
                    lotId: cubit.lotId,
                    auctionId: cubit.auctionId,
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}

class PropertyListArguments {
  final int lotId;
  final int auctionId;

  const PropertyListArguments({required this.lotId, required this.auctionId});
}
