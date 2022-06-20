import 'package:flutter/material.dart';
import 'package:my_first_app/app_flavore.dart';
import 'package:my_first_app/flavors.dart';

void main() {
  F.appFlavor = Flavor.PROD;
  runApp(const AppFlavore());
}
