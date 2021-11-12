import 'package:pol_sl_wieloplatformowosc/core/app/images.dart';

class WeatherImageProvider{
  final String weatherName;

  WeatherImageProvider({required this.weatherName});

  String get path {
    switch (weatherName.toLowerCase()) {
      case "thunderstorm":
        return Images.thunderstorm;
      case "drizzle":
      case "rain":
        return Images.rain;
      case "snow":
        return Images.snow;
      case "mist":
      case "smoke":
      case "haze":
      case "fog":
      case "squall":
        return Images.fog;
      case "dust":
      case "sand":
      case "ash":
        return Images.dust;
      case "tornado":
        return Images.tornado;
      case "clear":
        return Images.clear;
      case "clouds":
        return Images.clouds;
      default:
        return Images.clouds; // TODO default weather image
    }
  }
}