import 'package:bmiapp/presentation/screen/homepage.dart';
import 'package:bmiapp/presentation/widgets/bottomButton.dart';
import 'package:bmiapp/presentation/widgets/commonCard.dart';
import 'package:bmiapp/presentation/widgets/genderCard.dart';
import 'package:bmiapp/presentation/widgets/roundButton.dart';
import 'package:bmiapp/res/color/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((value) => runApp(MyApp()));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          useMaterial3: false,
        ),
        home: homePage());
  }
}
