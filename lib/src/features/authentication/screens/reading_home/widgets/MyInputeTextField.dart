import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../controllers/BookController.dart';

class MyInputTextField extends StatelessWidget {
  const MyInputTextField({super.key});

  @override
  Widget build(BuildContext context) {
    BookController bookController = Get.put(BookController());
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Theme.of(context).colorScheme.surface,
      ),
      child: Row(
        children: [
          const SizedBox(width: 20),
          InkWell(
              onTap: () {
                bookController.getAllBooks();
              },
              child: SvgPicture.asset("assets/icons/search.svg")),
          const SizedBox(width: 10),
          Expanded(
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: "Search here . .",
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
