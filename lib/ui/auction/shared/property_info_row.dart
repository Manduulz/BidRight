import 'package:bid_right_mobile/assets.dart';
import 'package:bid_right_mobile/models/property.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PropertyInfoRow extends StatelessWidget {
  final Property property;
  final Brightness brightness;

  const PropertyInfoRow({
    Key? key,
    required this.property,
    this.brightness = Brightness.light,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isDark = brightness == Brightness.dark;
    final filter = isDark ? _inverseFilter : _identityFilter;

    Widget svgWidget(String assetName) {
      return ColorFiltered(
        colorFilter: filter,
        child: SvgPicture.asset(assetName),
      );
    }

    final sections = <Widget>[
      _PropertyInfoRowSection(
        icon: svgWidget(VectorAssets.propertyType),
        labelText: property.type == null ? '-' : property.type!,
      ),
      _PropertyInfoRowSection(
        icon: svgWidget(VectorAssets.area),
        labelText: '${property.area ?? '-'} Sqft',
      ),
      _PropertyInfoRowSection(
        icon: svgWidget(VectorAssets.bed),
        labelText:
            property.beds == 1 ? '1 bed' : '${property.beds ?? '-'} beds',
      ),
      _PropertyInfoRowSection(
        icon: svgWidget(VectorAssets.bath),
        labelText:
            property.baths == 1 ? '1 bath' : '${property.baths ?? '-'} baths',
      ),
    ];

    return DefaultTextStyle.merge(
      style: isDark ? const TextStyle(color: Colors.white) : null,
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: Wrap(
            spacing: 4,
            alignment: WrapAlignment.spaceAround,
            children: sections,
          ),
        ),
      ),
    );
  }
}

class _PropertyInfoRowSection extends StatelessWidget {
  final Widget? icon;
  final String labelText;

  const _PropertyInfoRowSection({Key? key, this.icon, required this.labelText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null)
            Padding(
              padding: const EdgeInsetsDirectional.only(end: 4),
              child: icon!,
            ),
          Flexible(
              child: Text(
            labelText,
            textWidthBasis: TextWidthBasis.longestLine,
            maxLines: 2,
            overflow: TextOverflow.fade,
          ))
        ],
      ),
    );
  }
}

const _inverseFilter = ColorFilter.matrix(
    [-1, 0, 0, 0, 255, 0, -1, 0, 0, 255, 0, 0, -1, 0, 255, 0, 0, 0, 1, 0]);

const _identityFilter = ColorFilter.mode(Colors.black, BlendMode.dst);
