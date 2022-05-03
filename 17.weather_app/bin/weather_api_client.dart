import 'dart:convert';

import 'package:http/http.dart' as http;

import 'weather.dart';

class WeatherApiException implements Exception {
  WeatherApiException(this.message);
  final String message;
}

class WeatherApiClient {
  static const baseUrl = 'https://www.metaweather.com/api';

  Future<int> getLocationId(String city) async {
    final locationUrl = Uri.parse('$baseUrl/location/search?query=$city');
    final locationResponse = await http.get(locationUrl);

    if (locationResponse.statusCode != 200) {
      throw WeatherApiException('error getting locationId for $city');
    }

    // print('locationResponse: $locationResponse');
    // print('locationResponse.body: ${locationResponse.body}');
    final locationJson = jsonDecode(locationResponse.body) as List;
    if (locationJson.isEmpty) {
      throw WeatherApiException('no locationId found for $city');
    }
    return locationJson.first['woeid'];
  }

  Future<Weather> fetchWeather(int locationId) async {
    final weatherUrl = Uri.parse('$baseUrl/location/$locationId');
    final weatherResponse = await http.get(weatherUrl);
    if (weatherResponse.statusCode != 200) {
      throw WeatherApiException(
          'error getting weather for locationId $locationId');
    }
    final weatherJson = jsonDecode(weatherResponse.body);
    if (weatherJson.isEmpty) {
      throw WeatherApiException(
          'no weather data found for locationId $locationId');
    }
    final consolidatedWeather = weatherJson['consolidated_weather'] as List;
    return Weather.fromJson(consolidatedWeather[0]);
  }

  Future<Weather> getWeather(String city) async {
    final locationId = await getLocationId(city);
    return fetchWeather(locationId);
  }
}
