import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:my_first_app/flavors.dart';
import 'package:my_first_app/src/pages/home_page.dart';

class AppFlavore extends StatelessWidget {
  const AppFlavore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: F.title,
      theme: ThemeData(
        primarySwatch: F.color,
      ),
      home: _flavorBanner(
        child: const HomePage(),
        show: kDebugMode,
      ),
    );
  }

  Widget _flavorBanner({
    required Widget child,
    bool show = true,
  }) =>
      show
          ? Banner(
              location: BannerLocation.topStart,
              message: F.name,
              color: Colors.green.withOpacity(0.6),
              textStyle: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 12.0,
                  letterSpacing: 1.0),
              textDirection: TextDirection.ltr,
              child: child,
            )
          : Container(
              child: child,
            );
}
