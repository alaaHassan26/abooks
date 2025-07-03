import 'package:booklyapp/Core/utils/appstyles.dart';
import 'package:booklyapp/Features/Home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:booklyapp/Features/Home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NoInternetScreen extends StatelessWidget {
  const NoInternetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.wifi_off, size: 100),
            const SizedBox(height: 16),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                "No internet connection",
                style: AppStyles.styleSemiBold22nocolor(context),
              ),
            ),
            const SizedBox(height: 16),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text("Try these steps to reconnect to the internet:",
                  style: AppStyles.styleRegular16(context)),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.check_circle, color: Colors.green),
                const SizedBox(width: 8),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text("Check the modem and the router",
                      style: AppStyles.styleRegular16(context)),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.check_circle, color: Colors.green),
                const SizedBox(width: 8),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text("Reconnect to the Wi-Fi network",
                      style: AppStyles.styleRegular16(context)),
                ),
              ],
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                BlocProvider.of<NewestBooksCubit>(context).loadedBooks.clear();
                BlocProvider.of<NewestBooksCubit>(context)
                    .fetchNewestBooks(startIndex: 0);
                BlocProvider.of<FeaturedBooksCubit>(context)
                    .fetchFeaturedBooks();
              },
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  "Reload the page",
                  style: AppStyles.styleRegular16(context)
                      .copyWith(color: Colors.red),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
