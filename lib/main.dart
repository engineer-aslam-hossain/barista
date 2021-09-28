import 'package:barista/providers/order_provider.dart';
import 'package:barista/screens/login/login_screen.dart';
import 'package:barista/screens/order/order_screen.dart';
// import 'package:barista/screens/qr_scan/qr_scan_screen.dart';
import 'package:barista/screens/scan/scan_screen.dart';
import 'package:barista/screens/welcome/welcome_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (ctx) => Order()),
      ],
      child: Consumer(
        builder: (ctx, auth, child) => CupertinoApp(
          title: 'Barista',
          debugShowCheckedModeBanner: false,
          theme: CupertinoThemeData(
            scaffoldBackgroundColor: CupertinoColors.black,
            primaryColor: CupertinoColors.black,
            textTheme: CupertinoTextThemeData(
              primaryColor: CupertinoColors.white,
            ),
          ),
          home: WelcomeScreen(),
          routes: {
            WelcomeScreen.routeName: (ctx) => WelcomeScreen(),
            LoginScreen.routeName: (ctx) => LoginScreen(),
            ScanScreen.routeName: (ctx) => ScanScreen(),
            // QrScanPage.routeName: (ctx) => QrScanPage(),
            OrderScreen.routeName: (ctx) => OrderScreen(),
          },
        ),
      ),
    );
  }
}
