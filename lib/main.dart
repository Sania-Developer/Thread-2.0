import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:instagram_thread/util/colors.dart';
import 'package:instagram_thread/widgets/bottom_navigation.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true, scaffoldBackgroundColor: AppColor.background_color),
      home: BottomNavBar(),
    );
  }
}







