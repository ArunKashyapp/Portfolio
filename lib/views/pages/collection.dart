import 'package:flutter/material.dart';
import 'package:portfolio/views/pages/home_page.dart';
import 'package:portfolio/views/pages/projects_page.dart';
import 'package:portfolio/views/pages/tech_stack.dart';
import 'package:portfolio/views/shared/widgets/footer.dart';
import 'package:portfolio/views/shared/widgets/header.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class Collection extends StatefulWidget {
  const Collection({
    Key? key,
  }) : super(key: key);

  @override
  State<Collection> createState() => _CollectionState();
}

class _CollectionState extends State<Collection> {
  final itemController = ItemScrollController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => scollToindex(0));
  }

  void scollToindex(int? index) => itemController.scrollTo(
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
      index: index!);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            ScrollablePositionedList.builder(
              itemScrollController: itemController,
              itemCount: 4,
              itemBuilder: (context, index) {
                switch (index) {
                  case 0:
                    return Home_Page(
                      onTabSelected: (index) {
                        scollToindex(
                            null); // Pass the index to the scollToindex method
                      },
                    );
                  // case 1:
                  //   return const TechStack();
                  // case 2:
                  //   return const Project();
                  // case 3:
                  //   return const Footer();
                  default:
                    return Home_Page(
                      onTabSelected: (index) {
                        scollToindex(
                            index); // Pass the index to the scollToindex method
                      },
                    );
                }
              },
            ),
            // Positioned(
            //   top: 0,
            //   left: 0,
            //   right: 0,
            //   child: Header(
            //     onTabSelected: (index) {
            //       scollToindex(
            //           index); // Pass the index to the scollToindex method
            //     },
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

Widget mobile() {
  return const Scaffold();
}
