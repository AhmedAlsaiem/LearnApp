import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:i_learn/core/utils/appRouters.dart';
import 'package:i_learn/core/utils/constants.dart';
import 'package:i_learn/features/authantication/presentation/manager/cubits/forget_password_cubit/forget_password_cubit.dart';
import 'package:i_learn/firebase_options.dart';

import 'features/authantication/presentation/manager/cubits/sign_in_cubit/sign_in_cubit.dart';
import 'features/authantication/presentation/manager/cubits/sign_up_cubit/sign_up_cubit.dart';

void main() async {
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
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: ((context) => SignInCubit())),
        BlocProvider(create: ((context) => SignUpcubit())),
        BlocProvider(create: ((context) => ForgetPasswordCubit())),
      ],
      child: MaterialApp.router(
      
        // locale: Locale('ar'),
        theme: ThemeData(
          scaffoldBackgroundColor: ColorsManger.kWhiteColor,
        ),
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
