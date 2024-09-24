# Routing Example
1. Add Dio and other necessary packages to your `pubspec.yaml`:
    dependencies:
      get: 

2. Install the packages by running:
    flutter pub get

## Getx Route
## Key Features:
 1.GetX Routing: Utilizes the GetX package for seamless navigation.
 2.Named Routes: Centralized route names for cleaner and scalable route management.
 3.Custom Transitions: Supports custom navigation transitions (e.g., fadeIn).
 4.Theme Integration: Applies custom themes for consistent UI elements like buttons, colors,    inputs, and snackbars.

##  Routes Class (routes.dart):
A Singleton Class (Routes) responsible for managing all the routes within the app.
The getGetXPages() method defines the list of available routes using GetPage.
    GetPage(
      name: RoutesName.sample,
      page: () => const SampleScreen(),
      transition: Transition.fadeIn,
    )

## Routes Name (routes_name.dart):
A centralized file to store all route name constants.
  class RoutesName {
  static const String sample = '/sample';
  static const String home = '/home';
  }

## MyApp (main.dart):
The main entry point of the app using GetMaterialApp for GetX routing.

## Getx Nagigations:
1.
Navigate to a New Page - Get.to(() => NewPage());

2.
Navigate to a New Page with Arguments - Get.to(() => NewPage(), arguments: {'key': 'value'});

3.
Navigate to a New Page with Named Routes - Get.toNamed('/newPage', arguments: {'key': 'value'});

4.
Navigate and Replace the Current Page - Get.off(() => NewPage());

5.
Navigate and Remove All Previous Pages - Get.offAll(() => NewPage());

6.
Navigate Back - Get.back();

7.
Navigate Back to a Specific Page - Get.until((route) => Get.currentRoute == '/targetPage');
