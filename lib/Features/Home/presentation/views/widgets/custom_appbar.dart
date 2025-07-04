import 'package:booklyapp/Core/utils/app_router.dart';
import 'package:booklyapp/Core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(
        start: 30,
        end: 30,
        top: 10,
        bottom: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              'BookBreeze',
              style: TextStyle(fontSize: 26),
            ),
          ),
          IconButton(
            onPressed: () {
              GoRouter.of(context).push(AppRouter.kSearchView);
            },
            icon: Image.asset(
              AssetsData.search,
            ),
          ),
        ],
      ),
    );
  }
}
