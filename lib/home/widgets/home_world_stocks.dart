import 'package:flutter/material.dart';

class WorldStocksSection extends StatelessWidget {
  const WorldStocksSection();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
        child: SizedBox(
            height: 125,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
              separatorBuilder: (_, __) => const SizedBox(width: 8),
              itemCount: 3,
              itemBuilder: (_, index) {
                return WorldStocksSectionTile(_resource(index), _title(index));
              },
            )));
  }

  String _resource(int index) {
    switch (index) {
      case 0:
        return 'assets/images/UN.jpeg';
      case 1:
        return 'assets/images/CH.jpeg';
      default:
        return 'assets/images/UK.jpeg';
    }
  }

  String _title(int index) {
    switch (index) {
      case 0:
        return 'European Stocks';
      case 1:
        return 'Chinese Stocks';
      default:
        return 'UK Stocks';
    }
  }
}

class WorldStocksSectionTile extends StatelessWidget {
  final String _resourceName;
  final String _title;

  const WorldStocksSectionTile(this._resourceName, this._title);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(12.0),
        child: Stack(children: [
          Expanded(
              child: Image.asset(
                _resourceName,
                fit: BoxFit.fill,
              )),
          Padding(
              padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
              child: Column(
                children: [
                  const Expanded(child: SizedBox.shrink()),
                  Text(
                    _title,
                    style: Theme.of(context).textTheme.headline6?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 18),
                  )
                ],
              ))
        ]));
  }
}

