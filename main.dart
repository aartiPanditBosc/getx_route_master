import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:streetwise/routes/routes.dart';
import 'package:streetwise/routes/routes_name.dart';
import 'package:streetwise/themes/button_theme.dart';
import 'package:streetwise/themes/colors.dart';
import 'package:streetwise/themes/fonts.dart';
import 'package:streetwise/themes/input_decoration.dart';
import 'package:streetwise/themes/snackbar.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'StreetWise',
      theme: ThemeData(
        colorScheme: const StreetWiseColorSheme(),
        snackBarTheme: const StreetWiseSnackbarTheme(),
        textTheme: StreetWiseTextTheme.instace,
        elevatedButtonTheme: StreetWiseButtonTheme(),
        inputDecorationTheme: StreetWiseInputDecoration(),
        useMaterial3: true,
      ),
      getPages: Routes.instance.getGetXPages(),
      initialRoute: RoutesName.sample,
    );
  }
}
