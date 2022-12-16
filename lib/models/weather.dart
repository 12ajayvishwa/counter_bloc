import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

class Weather {
  final String cityName;
  final double temperature;

  Weather({required this.cityName, required this.temperature});
}
