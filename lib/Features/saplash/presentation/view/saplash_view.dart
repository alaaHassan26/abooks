// ignore_for_file: use_build_context_synchronously

import 'package:booklyapp/Core/utils/app_router.dart';
import 'package:booklyapp/cache/cache_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
// ignore: depend_on_referenced_packages

import 'package:go_router/go_router.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    _navigateToNext();
  }

  _navigateToNext() async {
    await Future.delayed(const Duration(seconds: 1), () {});
    bool? onboardingSeen = CacheHelper().getData(key: 'onboarding_seen');
    if (onboardingSeen == null || !onboardingSeen) {
      GoRouter.of(context).go('/onboarding');
    } else {
      GoRouter.of(context).go(AppRouter.kHomeView);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/images/booksp.svg',
              width: MediaQuery.of(context).size.width * .23,
              height: MediaQuery.of(context).size.height * .23,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'BookBreeze',
            ),
          ],
        ),
      ),
    );
  }
}
