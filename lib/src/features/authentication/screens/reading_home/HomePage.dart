import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mood_story/src/features/authentication/screens/reading_home/widgets/AppBar.dart';
import 'package:mood_story/src/features/authentication/screens/reading_home/widgets/CategoryWidget.dart';
import 'package:mood_story/src/features/authentication/screens/reading_home/widgets/MyInputeTextField.dart';
import '../../../../../components/BookCard.dart';
import '../../../../../components/BookTile.dart';
import '../../../../../components/MyDrawer.dart';
import '../../controllers/BookController.dart';
import '../../models/Data.dart';
import '../BookDetails/BookDetails.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    BookController bookController = Get.put(BookController());
    bookController.getUserBook();
    return Scaffold(
      drawer: myDrawer,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
              color: Theme.of(context).colorScheme.primary,
              // height: 500,
              child: Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          const SizedBox(height: 30),
                          const HomeAppBar(),
                          const SizedBox(height: 50),
                          Row(
                            children: [
                              Text(
                                "Good Morining✌️",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.copyWith(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .surface,
                                ),
                              ),
                              Text(
                                "Nitish",
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineMedium
                                    ?.copyWith(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .surface,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 5),
                          Row(
                            children: [
                              Flexible(
                                child: Text(
                                  "Time to read book and enhance your knowledge",
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelSmall
                                      ?.copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .surface,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          const MyInputTextField(),
                          const SizedBox(height: 20),
                          Row(
                            children: [
                              Text(
                                "Topics",
                                style: Theme.of(context)
                                    .textTheme
                                    .labelMedium
                                    ?.copyWith(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .surface,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: categoryData
                                  .map(
                                    (e) => CategoryWidget(
                                    iconPath: e["icon"]!,
                                    btnName: e["lebel"]!),
                              )
                                  .toList(),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Trending",
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Obx(
                            () => Row(
                          children: bookController.bookData
                              .map(
                                (e) => BookCard(
                              title: e.title!,
                              coverUrl: e.coverUrl!,
                              ontap: () {
                                Get.to(BookDetails(
                                  book: e,
                                ));
                              },
                            ),
                          )
                              .toList(),
                        ),
                      )),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        "Your Interests",
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Obx(() => Column(
                    children: bookController.bookData
                        .map(
                          (e) => BookTile(
                        ontap: () {
                          Get.to(BookDetails(book: e));
                        },
                        title: e.title!,
                        coverUrl: e.coverUrl!,
                        author: e.author!,
                        moodType: e.moodType!,
                        rating: e.rating!,
                        totalRating: 12,
                      ),
                    )
                        .toList(),
                  ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
