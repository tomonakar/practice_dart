import 'dart:io';

import 'weather_api_client.dart';

Future<void> main(List<String> argument) async {
  if (argument.length != 1) {
    print('Syntax: dart bin/main.dart <city>');
    return;
  }
  final city = argument.first;
  final api = WeatherApiClient();
  try {
    final weather = await api.getWeather(city);

    print(weather);
  } on WeatherApiException catch (e) {
    print(e.message);
  } on SocketException catch (_) {
    print('Could not fetch weather data. Check your connection.');
  } catch (e) {
    print(e.toString());
  }
}
