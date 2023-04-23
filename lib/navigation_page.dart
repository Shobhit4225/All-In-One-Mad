import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mad_practice/main.dart';
import 'package:mad_practice/pokidesk.dart';
import 'package:mad_practice/todo.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({Key? key}) : super(key: key);

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Sample App',
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          margin: EdgeInsets.all(16.0), // Add margin around the container
          child: Column(
            children: [
              const Text(
                'Upcoming Events',
                textAlign: TextAlign.end,
                style: TextStyle(
                  color: Colors.black, // Set text color to blue
                  fontSize: 14.0, // Set text size to 24.0
                  fontWeight: FontWeight.bold, // Set text weight to bold
                ),
                textScaleFactor: 1.5, // Set text scale factor to 1.5 (150%)
              ),
              CarouselSlider(
                options: CarouselOptions(
                  height: 200,
                  // Set the height of the carousel
                  initialPage: 0,
                  // Set the initial page
                  enableInfiniteScroll: true,
                  // Set to true for infinite scrolling
                  autoPlay: true,
                  // Set to true for auto-play
                  autoPlayInterval: Duration(seconds: 3),
                  // Set the auto-play interval
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  // Set the auto-play animation duration
                  autoPlayCurve: Curves.fastOutSlowIn,
                  // Set the auto-play animation curve
                  enlargeCenterPage: true,
                  // Set to true to enlarge the center page
                  onPageChanged: (index, reason) {
                    // Callback function for page change
                    print('Page changed: $index');
                  },
                ),
                items: [
                  // Add the carousel items
                  ClipRRect(
                    borderRadius: BorderRadius.circular(
                        20), // Set the desired corner radius here
                    child: Image.network(
                        'https://images.pexels.com/photos/2263410/pexels-photo-2263410.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                        fit: BoxFit.cover),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(
                        20), // Set the desired corner radius here
                    child: Image.network(
                        'https://images.pexels.com/photos/1763075/pexels-photo-1763075.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                        fit: BoxFit.cover),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(
                        20), // Set the desired corner radius here
                    child: Image.network(
                        'https://images.pexels.com/photos/2263410/pexels-photo-2263410.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                        fit: BoxFit.cover),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.all(16.0), // Set the margin for the card
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                      20.0), // Set the corner radius for the card
                  color: Colors
                      .yellowAccent, // Set the background color of the card
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey, // Set the shadow color of the card
                      offset: Offset(0, 4), // Set the offset of the shadow
                      blurRadius: 4.0, // Set the blur radius of the shadow
                      spreadRadius: 2.0, // Set the spread radius of the shadow
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Card(
                      elevation: 4.0, // Set the elevation of the card
                      shadowColor: Colors
                          .yellowAccent, // Set the shadow color of the card
                      color: Colors
                          .yellowAccent, // Set the background color of the card
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(
                                20), // Set the desired corner radius here
                            child: Image.network(
                                'https://images.pexels.com/photos/2263410/pexels-photo-2263410.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                                fit: BoxFit.cover),
                          ),
                          Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Column(
                              children: [
                                const Text(
                                  'Card Title',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0,
                                  ),
                                ),
                                SizedBox(height: 8.0),
                                Text(
                                  'Some quick example text to build on the card title and make up the bulk of the card\'s content.',
                                  style: TextStyle(fontSize: 16.0),
                                ),
                                SizedBox(height: 16.0),
                                Container(
                                  alignment: Alignment.centerRight,
                                  // Set alignment to right
                                  child: ElevatedButton(
                                    onPressed: () {
                                      // Add your onPressed logic here
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const TodoPage()),
                                      );
                                    },
                                    child: Text('Go somewhere'),
                                  ),
                                ),
                                SizedBox(height: 7.0),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

              ),
              Container(
                margin: EdgeInsets.all(16.0), // Set the margin for the card
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                      20.0), // Set the corner radius for the card
                  color: Colors
                      .pinkAccent, // Set the background color of the card
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey, // Set the shadow color of the card
                      offset: Offset(0, 4), // Set the offset of the shadow
                      blurRadius: 4.0, // Set the blur radius of the shadow
                      spreadRadius: 2.0, // Set the spread radius of the shadow
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Card(
                      elevation: 4.0, // Set the elevation of the card
                      shadowColor: Colors
                          .pinkAccent, // Set the shadow color of the card
                      color: Colors
                          .pink, // Set the background color of the card
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(
                                20), // Set the desired corner radius here
                            child: Image.network(
                                'https://images.pexels.com/photos/2263410/pexels-photo-2263410.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                                fit: BoxFit.cover),
                          ),
                          Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Column(
                              children: [
                                const Text(
                                  'Card Title',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(height: 8.0),
                                Text(
                                  'Some quick example text to build on the card title and make up the bulk of the card\'s content.',
                                  style: TextStyle(fontSize: 16.0,
                                  color: Colors.white),
                                ),
                                SizedBox(height: 16.0),
                                Container(
                                  alignment: Alignment.centerRight,
                                  // Set alignment to right
                                  child: ElevatedButton(
                                    onPressed: () {
                                      // Add your onPressed logic here
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                PokiDeskApp()),
                                      );
                                    },
                                    child: Text('Go somewhere'),
                                  ),
                                ),
                                SizedBox(height: 7.0),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

              ),
              Container(
                margin: EdgeInsets.all(16.0), // Set the margin for the card
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                      20.0), // Set the corner radius for the card
                  color: Colors
                      .yellowAccent, // Set the background color of the card
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey, // Set the shadow color of the card
                      offset: Offset(0, 4), // Set the offset of the shadow
                      blurRadius: 4.0, // Set the blur radius of the shadow
                      spreadRadius: 2.0, // Set the spread radius of the shadow
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Card(
                      elevation: 4.0, // Set the elevation of the card
                      shadowColor: Colors
                          .yellowAccent, // Set the shadow color of the card
                      color: Colors
                          .yellowAccent, // Set the background color of the card
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(
                                20), // Set the desired corner radius here
                            child: Image.network(
                                'https://images.pexels.com/photos/2263410/pexels-photo-2263410.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                                fit: BoxFit.cover),
                          ),
                          Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Column(
                              children: [
                                const Text(
                                  'Card Title',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0,
                                  ),
                                ),
                                SizedBox(height: 8.0),
                                const Text(
                                  'Some quick example text to build on the card title and make up the bulk of the card\'s content.',
                                  style: TextStyle(fontSize: 16.0),
                                ),
                                SizedBox(height: 16.0),
                                Container(
                                  alignment: Alignment.centerRight,
                                  // Set alignment to right
                                  child: ElevatedButton(
                                    onPressed: () {
                                      // Add your onPressed logic here
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                NavigationPage()),
                                      );
                                    },
                                    child: Text('Go somewhere'),
                                  ),
                                ),
                                SizedBox(height: 7.0),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint('Floating Action Button');
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomePage1()),
          );
        },
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.settings), label: 'Settings'),
          NavigationDestination(icon: Icon(Icons.info), label: 'Info'),
        ],
        onDestinationSelected: (int index) {
          setState(() {
            currentPage = index;
          });
        },
        selectedIndex: currentPage,
      ),
    );
  }
}
