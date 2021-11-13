import 'package:flutter/material.dart';
import 'package:pol_sl_wieloplatformowosc/features/weather/presentation/pages/weather_page.dart';

class WeatherPagesView extends StatefulWidget {
  const WeatherPagesView({Key? key}) : super(key: key);

  @override
  _WeatherPagesViewState createState() => _WeatherPagesViewState();
}

class _WeatherPagesViewState extends State<WeatherPagesView> {
  late final PageController _pageController;

  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        WeatherPage(cityName: 'Gliwice',),
        WeatherPage(cityName: 'Pekin',),
        WeatherPage(cityName: 'Nowy Jork',),
        WeatherPage(),
      ],
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
