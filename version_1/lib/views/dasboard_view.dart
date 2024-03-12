import 'package:flutter/material.dart';
import 'package:version_1/views/dasboard_appbar.dart';
import 'package:version_1/views/dasboard_header.dart';
import 'package:version_1/views/dashboard_header.dart';
import 'package:version_1/views/product_grid.dart';

class dashboardView extends StatefulWidget {
  const dashboardView({super.key});

  @override
  _DashboardViewState createState() => _DashboardViewState();
}

class _DashboardViewState extends State<dashboardView> {
  bool _isBlurVisible = false;
  void _toggleBlurVisibility() {
    setState(() {
      _isBlurVisible = !_isBlurVisible;
    });
  }

  void _onMenuIconTap() {
    // Action for menu icon
    print('Menu icon tapped');
    _toggleBlurVisibility();
  }

  void _onSearchIconTap() {
    // Action for search icon
    print('Search icon tapped');
  }

  void _onFavoriteIconTap() {
    // Action for favorite icon
    print('Favorite icon tapped');
  }

  void _onSettingsIconTap() {
    // Action for settings icon
    print('Settings icon tapped');
  }

  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController();
    final screenHeight = MediaQuery.of(context).size.height;

    const borderRadius = BorderRadius.only(
      bottomLeft:
          Radius.circular(10), // Adjust the bottom left radius as needed
      bottomRight:
          Radius.circular(10), // Adjust the bottom right radius as needed
    );

    return Scaffold(
      backgroundColor: Color(0xFF0F2027),
      appBar: const MyDashboardAppBar(),
      body: Stack(
        children: [
          ListView(
            children: [
              DashboardHeader(pageController: pageController),
              const SizedBox(height: 5),
              const Header(headerTitle: 'Categories'),
              const SizedBox(height: 1),
              const CategoriesGrid(),
              const SizedBox(height: 4),
              const Header(headerTitle: 'Houses'),
              const ProductGrid(),
            ],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
                height: 60,
                width: 800,
                decoration: BoxDecoration(
                  borderRadius: borderRadius,
                  color: Color.fromARGB(255, 159, 162, 163).withOpacity(1.0),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 7, 7, 7).withOpacity(0.1),
                      spreadRadius: 1,
                      blurRadius: 10,
                      offset: Offset(0, -3),
                    ),
                  ],
                ),
                child: Center(
                  child: Center(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: _onMenuIconTap,
                            child: AnimatedOpacity(
                              opacity: _isBlurVisible ? 0.0 : 1.0,
                              duration: Duration(milliseconds: 300),
                              child: const Icon(
                                Icons.menu,
                                color: Color.fromARGB(255, 255, 255, 255),
                                size: 40,
                              ),
                            ),
                          ),
                          SizedBox(width: 30), // Add some space between icons
                          AnimatedOpacity(
                            opacity: _isBlurVisible ? 0.0 : 1.0,
                            duration: Duration(milliseconds: 300),
                            child: InkWell(
                              onTap: _onSearchIconTap,
                              child: const Icon(
                                Icons.search,
                                color: Color.fromARGB(255, 255, 255, 255),
                                size: 40,
                              ),
                            ),
                          ),
                          SizedBox(width: 30), // Add some space between icons
                          AnimatedOpacity(
                            opacity: _isBlurVisible ? 0.0 : 1.0,
                            duration: Duration(milliseconds: 300),
                            child: InkWell(
                              onTap: _onSearchIconTap,
                              child: const Icon(
                                Icons.favorite,
                                color: Color.fromARGB(255, 255, 255, 255),
                                size: 40,
                              ),
                            ),
                          ),
                          SizedBox(width: 30), // Add some space between icons
                          AnimatedOpacity(
                            opacity: _isBlurVisible ? 0.0 : 1.0,
                            duration: Duration(milliseconds: 300),
                            child: InkWell(
                              onTap: _onSearchIconTap,
                              child: const Icon(
                                Icons.arrow_back_ios_new_sharp,
                                color: Color.fromARGB(255, 255, 255, 255),
                                size: 30,
                              ),
                            ),
                          ),

                          SizedBox(
                            width: 30,
                          ),

                          AnimatedOpacity(
                            opacity: _isBlurVisible ? 0.0 : 1.0,
                            duration: Duration(milliseconds: 300),
                            child: InkWell(
                              onTap: _onSearchIconTap,
                              child: const Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: Color.fromARGB(255, 255, 255, 255),
                                size: 30,
                              ),
                            ),
                          ),
                          // child: GestureDetector(
                          //   onTap: () {
                          //     setState(() {
                          //       _isBlurVisible = !_isBlurVisible;
                          //     });
                          //   },
                          //   child: AnimatedOpacity(
                          //     opacity: _isBlurVisible ? 0.0 : 1.0,
                          //     duration: Duration(milliseconds: 300),
                          //     child: const Icon(
                          //       Icons.menu,
                          //       color: Color.fromARGB(255, 255, 255, 255),
                          //       size: 50,
                          //     ),
                          //   ),
                          // ),
                        ]),
                  ),
                )),
          ),
          // if (_isBlurVisible)
          //   Positioned.fill(
          //       child: Container(
          //           color: Colors.black.withOpacity(0.9),
          //           child: Center(
          //             child: Row(
          //               mainAxisAlignment: MainAxisAlignment.center,
          //               children: [
          //                 IconButton(
          //                     onPressed: () {
          //                       setState(() {
          //                         _isBlurVisible = false;
          //                       });
          //                     },
          //                     icon: const Icon(
          //                       Icons.home,
          //                       color: Color.fromARGB(255, 255, 255, 255),
          //                       size: 40,
          //                     )),
          //                 const SizedBox(
          //                   width: 20,
          //                 ),
          //                 IconButton(
          //                     onPressed: () {
          //                       setState(() {
          //                         _isBlurVisible = false;
          //                       });
          //                     },
          //                     icon: const Icon(
          //                       Icons.settings,
          //                       color: Color.fromARGB(255, 255, 255, 255),
          //                       size: 40,
          //                     )),
          //                 const SizedBox(
          //                   width: 20,
          //                 ),
          //                 IconButton(
          //                     onPressed: () {
          //                       setState(() {
          //                         _isBlurVisible = false;
          //                       });
          //                     },
          //                     icon: const Icon(
          //                       Icons.shop,
          //                       color: Color.fromARGB(255, 255, 255, 255),
          //                       size: 40,
          //                     )),
          //               ],
          //             ),
          //           )))
        ],
      ),
    );
  }
}

class CategoriesGrid extends StatelessWidget {
  const CategoriesGrid({super.key});

  final List<String> categories = const [
    'BedSitters',
    'One\nBedrooms',
    'Two\nBedrooms',
    'Three\nBedrooms'
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: GridView.builder(
        physics: const ScrollPhysics(),
        itemBuilder: (context, index) {
          return ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF2C5364),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
            ),
            child: ListTile(
              contentPadding: EdgeInsets.all(3),
              title: Text(
                categories[index],
                style: const TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 12,
                    fontWeight: FontWeight.w600),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
          );
        },
        shrinkWrap: true,
        itemCount: categories.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 3,
            crossAxisSpacing: 6,
            mainAxisSpacing: 5,
            crossAxisCount: 2),
      ),
    );
  }
}
