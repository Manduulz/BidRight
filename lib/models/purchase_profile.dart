import 'package:bid_right_mobile/models/address.dart';

class PurchaseProfile {
  final int id;
  final String type;
  final String name;
  final String? contactName;
  final String? phone;
  final Address? address;
  final bool isPrimary;
  final bool isAgent;

  const PurchaseProfile({
    required this.id,
    required this.type,
    required this.name,
    required this.contactName,
    required this.phone,
    this.address,
    required this.isPrimary,
    required this.isAgent,
  });
}
