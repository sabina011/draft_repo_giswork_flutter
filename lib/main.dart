import 'package:flutter/material.dart';
import 'package:myapp/application/injectable/injection.dart';
import 'package:myapp/config/app_dependencies.dart';
import 'package:myapp/config/app_providers.dart';
import 'package:provider/provider.dart';

import 'config/routes/routes_config.dart';
import 'screens/splash/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setup();
  ConfigureDependencies.configureAppDependencies();
  runApp(
    MultiProvider(
      providers: EmbeddedGISProviders().ConfigureAppProviders,
      child: GeoApp(),
    ),
  );
}

class GeoApp extends StatefulWidget {
  @override
  State<GeoApp> createState() => _GeoAppState();
}

class _GeoAppState extends State<GeoApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'GIS Work',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.green,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        onGenerateRoute: RouteGenerate.onGenerateRoute,
        // home:
        home:SplashScreen()
    );
  }
}
