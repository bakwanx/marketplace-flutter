import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketplace/presentation/cubit/splash_cubit.dart';
import 'package:marketplace/utils/themes/theme.dart';
import 'package:marketplace/utils/themes/typography_text_style.dart';

import '../di/dependency_injection.dart';
import 'base_home/domain/repositories/base_home_navigation_repository.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => di<SplashCubit>()..initData(),
      child: const SplashScreenUI(),
    );
  }
}

class SplashScreenUI extends StatefulWidget {
  const SplashScreenUI({super.key});

  @override
  State<SplashScreenUI> createState() => _SplashScreenUIState();
}

class _SplashScreenUIState extends State<SplashScreenUI> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SplashCubit, SplashState>(
      listener: (context, state) {
        di<BaseHomeNavigationRepository>().goToBaseHome(context);
        return;
        // if (!state.isFirstTime && !state.isLogin) {
        //   di<AuthNavigationRepository>().goToEmailLoginScreen(context);
        //   return;
        // }
        // if (state.isLogin) {
        //   di<BaseHomeNavigationRepository>().goToBaseHome(context);
        //   return;
        // }
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: CustomColor.greenColor,
          body: Center(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "LOGO",
                    style: TypographyTextStyle.bodyLight1.copyWith(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
