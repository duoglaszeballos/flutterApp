import 'package:flutter/material.dart';
import 'package:forniture_app/env.dart';

void main() => Staging();

class Staging extends Env {
  final String baseUrl = 'https://api.staging.website.org';
  final Color primarySwatch = Colors.amber;
}
