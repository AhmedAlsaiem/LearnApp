import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:i_learn/core/utils/appRouters.dart';
import 'package:i_learn/core/utils/constants.dart';
import 'package:i_learn/firebase_options.dart';



void main()async {
 WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(Learn());
}

class Learn extends StatelessWidget {
  Learn({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        scaffoldBackgroundColor: ColorsManger.kWhiteColor,
      ),
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
    );
  }
}
