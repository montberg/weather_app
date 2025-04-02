import 'package:flutter/material.dart';
import 'package:weather_application/core/data/api/cities_api/models/geo_object_model.dart';

class CityPickerTile extends StatelessWidget {
  const CityPickerTile({
    super.key,
    required this.geoObject,
    required this.onTileTap,
    required this.onAddTap,
    required this.isAdded,
  });

  final GeoObject geoObject;
  final bool isAdded;
  final VoidCallback onTileTap;
  final VoidCallback onAddTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTileTap,
      borderRadius: BorderRadius.circular(10),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  geoObject.localizedName,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                Text(
                  "${geoObject.administrativeArea.localizedName.isNotEmpty ? '${geoObject.administrativeArea.localizedName}, ' : ''}${geoObject.country.localizedName}",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
            const Spacer(),
            InkWell(
              borderRadius: BorderRadius.circular(90),
              onTap: isAdded ? onTileTap : onAddTap,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: isAdded
                    ? const Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("Добавлено"),
                          SizedBox(width: 3),
                          Icon(Icons.chevron_right)
                        ],
                      )
                    : const Icon(Icons.add),
              ),
            )
          ],
        ),
      ),
    );
  }
}
