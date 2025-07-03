import 'package:booklyapp/Core/utils/functions/launch_url.dart';
import 'package:booklyapp/Core/widgets/custom_button.dart';
import 'package:booklyapp/Core/models/BookModel.dart';
import 'package:booklyapp/constants.dart';
import 'package:flutter/material.dart';

class BooksActions extends StatelessWidget {
  const BooksActions({super.key, required this.bookModel});

  final Items bookModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              onPressed: () async {
                customLaunchURL(context, bookModel.volumeInfo!.previewLink!);
              },
              backgroundColor: kButtonColor,
              textColor: Colors.white,
              text: getText(bookModel),
              borderRadius: BorderRadiusDirectional.circular(15),
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }

  getText(Items bookModel) {
    if (bookModel.volumeInfo?.previewLink == null) {
      return 'Not Available';
    } else {
      return 'Preview';
    }
  }
}
