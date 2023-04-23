import 'package:flutter/material.dart';
import 'package:mad_practice/navigation_page.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFFAC6DDC), Color(0xFFF68BFB)],
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 220, // Set the width of the container
                  height: 220, // Set the height of the container
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle, // Set the shape of the container to a circle
                    image: DecorationImage(
                      // Set the image as the background of the container
                      image: NetworkImage(
                        'https://img.freepik.com/free-vector/customer-support-flat-illustration_23-2148892786.jpg?w=996&t=st=1682158618~exp=1682159218~hmac=11362d9b5594acbbfd944075e0bad48887b190705c1c4c9be6b275dffcce3b9a',
                      ),
                      fit: BoxFit.cover, // Set the fit property to control how the image is displayed
                    ),
                  ),
                ),
                const SizedBox(height: 24.0),
                const Text(
                  'Welcome to My App',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16.0),
                const Text(
                  'A Flutter App Template',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 48.0),
                ElevatedButton(

                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const NavigationPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),

                  child: const Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: 16.0, horizontal: 32.0),
                    child: Text(
                      'Get Started',
                      style: TextStyle(fontSize: 18.0,
                          color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}