import 'package:flutter/material.dart';
import 'package:weather_application/core/data/api/cities_api/models/geo_object_model.dart';

class CityPeviewChip extends StatelessWidget {
  const CityPeviewChip({
    super.key,
    required this.city,
    required this.onTap,
    required this.isAdded,
  });

  final GeoObject city;

  final VoidCallback onTap;

  final bool isAdded;

  @override
  Widget build(BuildContext context) {
    return ActionChip(
      onPressed: onTap,
      shape: const StadiumBorder(
        side: BorderSide(style: BorderStyle.none),
      ),
      backgroundColor:
          isAdded ? Colors.blue : Colors.blueGrey.withOpacity(0.05),
      label: Text(
        city.localizedName,
        style: TextStyle(color: isAdded ? Colors.white : null),
      ),
    );
  }
}
