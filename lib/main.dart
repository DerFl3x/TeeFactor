import 'package:flutter/material.dart';
import 'colorPalette.dart';

void main() {
  runApp(const TeeFactor());
}

class TeeFactor extends StatelessWidget {
  const TeeFactor({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const teeFactorHome(),
    );
  }
}

class teeFactorHome extends StatelessWidget {
  const teeFactorHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            decoration: BoxDecoration(
              color: ColorPalette.primaryColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              'TeeFactor',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: ColorPalette.textColor,
              ),
            ),
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: const Text('Welcome to TeeFactor 2FA!'),
      ),
      bottomSheet: Padding(
        padding: const EdgeInsets.only(left: 15, top: 0, right: 15, bottom: 15),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          decoration: BoxDecoration(
            color: ColorPalette.primaryColor,
            borderRadius: BorderRadius.circular(20), // Rounded corners
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[

              // Left button - Rounded Square
              ElevatedButton.icon(
                onPressed: () {
                  // Action for middle button
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(30, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  //padding: EdgeInsets.only(top: 0)
                ),
                icon: const Icon(Icons.settings, size: 30, color: ColorPalette.secondaryColor,),
                label: const Text('')
              ),

              // Middle button - Rounded Rectangle with Search Icon
              ElevatedButton.icon(
                onPressed: () {
                  // Action for middle button
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(220, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                icon: const Icon(Icons.search),
                label: const Text('Search'),
              ),

              // Right button - Rounded Square
              ElevatedButton.icon(
                  onPressed: () {
                    // Action for middle button
                  },
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(30, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    //padding: EdgeInsets.only(top: 0)
                  ),
                  icon: const Icon(Icons.photo_camera_outlined, size: 30, color: ColorPalette.secondaryColor,),
                  label: const Text('')
              ),
            ],
          ),
        ),
      ),
    );
  }
}
