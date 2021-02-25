import 'package:flutter/material.dart';
import 'package:forniture_app/env.dart';

void main() => Production();

class Production extends Env {
  final String baseUrl = 'https://api.website.org';
  final Color primarySwatch = Colors.teal;
}
