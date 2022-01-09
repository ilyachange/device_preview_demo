import 'package:flutter/material.dart';
import 'package:device_preview_demo/home/widgets/home_app_bar.dart';
import 'package:device_preview_demo/home/widgets/home_background.dart';
import 'package:device_preview_demo/home/widgets/home_filter_presets.dart';
import 'package:device_preview_demo/home/widgets/home_not_available.dart';
import 'package:device_preview_demo/home/widgets/home_search_bar.dart';
import 'package:device_preview_demo/home/widgets/home_section_header.dart';
import 'package:device_preview_demo/home/widgets/home_ticker.dart';
import 'package:device_preview_demo/home/widgets/home_world_stocks.dart';
import 'package:device_preview_demo/home/widgets/home_updates_tile.dart';
import 'package:device_preview_demo/ui/constants.dart';
import 'package:device_preview_demo/widgets/stock_row.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(children: const [HomeBackground(), HomeList(), HomeAppBar()]);
  }
}

class HomeList extends StatelessWidget {
  const HomeList();

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      children: const [
        SizedBox(height: kTopBarHeight - 56 /*32*/),
        SectionTicker(),
        SearchBar(),
        CountryNotAvailableSection(),
        SectionTitle(Icons.remove_red_eye_outlined, 'Recently viewed'),
        StockRow('Tesla', 'TSLA', 'assets/images/tesla.jpeg'),
        StockRow('Telefonica', 'TEF', 'assets/images/telefonica.jpeg'),
        StockRow('Microsoft', 'MSFT', 'assets/images/microsoft.png'),
        SectionTitle(Icons.info_outlined, 'Lightning updates'),
        UpdatesTile(),
        SectionTitle(Icons.grid_view_outlined, 'Browse'),
        WorldStocksSection(),
        PresetSection(),
      ],
    );
  }
}
