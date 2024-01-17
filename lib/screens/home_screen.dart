import 'package:flutter/material.dart';
import 'package:saffron_ias_flutter_mobile/constants/theme.dart';
import 'package:saffron_ias_flutter_mobile/widgets/courses_widget.dart';
import 'package:saffron_ias_flutter_mobile/widgets/dropdown_widget.dart';
import 'package:saffron_ias_flutter_mobile/widgets/hero_drawer_widget.dart';
import 'package:saffron_ias_flutter_mobile/widgets/home_widget.dart';
import 'package:saffron_ias_flutter_mobile/widgets/live_widget.dart';
import 'package:saffron_ias_flutter_mobile/widgets/profile_widget.dart';
import 'package:saffron_ias_flutter_mobile/widgets/test_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // int homeScreenIndex = 0;

  int _currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  Widget returnBody() {
    switch (_currentIndex) {
      case 0:
        return const HomeScreenWidget();
      case 1:
        return const CoursesWidget();
      case 2:
        return const LiveClassesWidget();
      case 3:
        return const TestWidget();
      case 4:
        return const ProfileWidget();
      default:
        return const HomeScreenWidget();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _currentIndex == 0
          ? AppBar(
              // leading: const Text("data"),
              title:
                  _currentIndex == 0 ? const DropDownWidget() : const Text(""),
              backgroundColor: ColorTheme.primaryColorwithLessOpacity,
            )
          : null,
      body: returnBody(),
      drawer: const Drawer(
        child: HeroDrawerWidget(),
      ),
      bottomNavigationBar: BottomAppBar(
        color: ColorTheme.primaryColorwithLessOpacity,
        height: 95,
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Theme(
              data: ThemeData(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
              ),
              child: InkWell(
                enableFeedback: false,
                onTap: () {
                  _onItemTapped(0);
                },
                child: Column(children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                    decoration: BoxDecoration(
                      color: (_currentIndex == 0)
                          ? const Color.fromARGB(255, 246, 178, 152)
                          : Colors
                              .transparent, // Set your desired background color
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Icon(
                      Icons.home_rounded,
                      color: (_currentIndex == 0)
                          ? ColorTheme.primaryColor
                          : const Color.fromARGB(255, 244, 152, 115),
                      size: IconSizeTheme.bottomNavigationBarIconSize,
                    ),
                  ),
                  Text(
                    "Home",
                    style: TextStyle(
                      letterSpacing: 1.1,
                      color: (_currentIndex == 0)
                          ? ColorTheme.primaryColor
                          : const Color.fromARGB(255, 0, 0, 0), // Text color
                      fontSize: 12.0, // Font size
                      // fontWeight: FontWeight.bold, // Font weight
                      // fontStyle: FontStyle.italic, // Font style
                      // decoration: TextDecoration.underline, // Text decoration
                      // decorationColor: Colors.red, // Decoration color
                      // decorationStyle:
                      // TextDecorationStyle.dashed, // Decoration style
                      // letterSpacing: 2.0, // Letter spacing
                    ),
                  )
                ]),
              ),
            ),
            Theme(
              data: ThemeData(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
              ),
              child: InkWell(
                enableFeedback: false,
                onTap: () {
                  _onItemTapped(1);
                },
                child: Column(children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                    decoration: BoxDecoration(
                      color: (_currentIndex == 1)
                          ? const Color.fromARGB(255, 246, 178, 152)
                          : Colors
                              .transparent, // Set your desired background color
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Icon(
                      Icons.menu_book_outlined,
                      color: (_currentIndex == 1)
                          ? ColorTheme.primaryColor
                          : const Color.fromARGB(255, 244, 152, 115),
                      size: IconSizeTheme.bottomNavigationBarIconSize,
                    ),
                  ),
                  Text(
                    "Courses",
                    style: TextStyle(
                      letterSpacing: 1.1,
                      color: (_currentIndex == 1)
                          ? ColorTheme.primaryColor
                          : const Color.fromARGB(255, 0, 0, 0), // Text color
                      fontSize: 12.0,
                    ),
                  )
                ]),
              ),
            ),
            Theme(
              data: ThemeData(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
              ),
              child: InkWell(
                enableFeedback: false,
                onTap: () {
                  _onItemTapped(2);
                },
                child: Column(children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                    decoration: BoxDecoration(
                      color: (_currentIndex == 2)
                          ? const Color.fromARGB(255, 246, 178, 152)
                          : Colors
                              .transparent, // Set your desired background color
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Icon(
                      Icons.live_tv_outlined,
                      color: (_currentIndex == 2)
                          ? ColorTheme.primaryColor
                          : const Color.fromARGB(255, 244, 152, 115),
                      size: IconSizeTheme.bottomNavigationBarIconSize,
                    ),
                  ),
                  Text(
                    "Live",
                    style: TextStyle(
                      letterSpacing: 1.1,
                      color: (_currentIndex == 2)
                          ? ColorTheme.primaryColor
                          : const Color.fromARGB(255, 0, 0, 0), // Text color
                      fontSize: 12.0,
                    ),
                  )
                ]),
              ),
            ),
            Theme(
              data: ThemeData(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
              ),
              child: InkWell(
                enableFeedback: false,
                onTap: () {
                  _onItemTapped(3);
                },
                child: Column(children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                    decoration: BoxDecoration(
                      color: (_currentIndex == 3)
                          ? const Color.fromARGB(255, 246, 178, 152)
                          : Colors
                              .transparent, // Set your desired background color
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Icon(
                      Icons.my_library_books_outlined,
                      color: (_currentIndex == 3)
                          ? ColorTheme.primaryColor
                          : const Color.fromARGB(255, 244, 152, 115),
                      size: IconSizeTheme.bottomNavigationBarIconSize,
                    ),
                  ),
                  Text(
                    "Test",
                    style: TextStyle(
                      letterSpacing: 1.1,
                      color: (_currentIndex == 3)
                          ? ColorTheme.primaryColor
                          : const Color.fromARGB(255, 0, 0, 0), // Text color
                      fontSize: 12.0,
                    ),
                  )
                ]),
              ),
            ),
            Theme(
              data: ThemeData(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
              ),
              child: InkWell(
                enableFeedback: false,
                onTap: () {
                  _onItemTapped(4);
                },
                child: Column(children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                    decoration: BoxDecoration(
                      color: (_currentIndex == 4)
                          ? const Color.fromARGB(255, 246, 178, 152)
                          : Colors
                              .transparent, // Set your desired background color
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Icon(
                      Icons.dashboard_customize_outlined,
                      color: (_currentIndex == 4)
                          ? ColorTheme.primaryColor
                          : const Color.fromARGB(255, 244, 152, 115),
                      size: IconSizeTheme.bottomNavigationBarIconSize,
                    ),
                  ),
                  Text(
                    "Dashboard",
                    style: TextStyle(
                      letterSpacing: 1.1,
                      color: (_currentIndex == 4)
                          ? ColorTheme.primaryColor
                          : const Color.fromARGB(255, 0, 0, 0), // Text color
                      fontSize: 12.0, // Font size
                    ),
                  )
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
