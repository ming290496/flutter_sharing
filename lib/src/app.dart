import 'package:flutter/material.dart';
import 'package:flutter_sharing/src/blocs/home_provider.dart';
import 'package:flutter_sharing/src/blocs/login_provider.dart';
import 'package:flutter_sharing/src/screems/home_screen.dart';
import 'package:flutter_sharing/src/screems/login_screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HomeProvider(
      child: LoginProvider(
        child: MaterialApp(
          title: 'Flutter Sharing',
          onGenerateRoute: routes,
        ),
      ),
    );
  }

  static Route<dynamic> routes(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => LoginScreen());
        break;
      case '/home':
        return MaterialPageRoute(builder: (_) => HomeScreen());
        break;
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${routeSettings.name}'),
            ),
          ),
        );
    }
  }
}
