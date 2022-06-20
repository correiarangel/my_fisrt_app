import 'package:flutter/material.dart';

import 'app_flavore.dart';
import 'flavors.dart';

void main() {
  F.appFlavor = Flavor.HOM;
  runApp(const AppFlavore());
}
