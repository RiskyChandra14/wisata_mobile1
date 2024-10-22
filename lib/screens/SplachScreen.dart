import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Splachscreen extends StatelessWidget {
  const Splachscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFF0F3F5),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Lottie.network(
                'https://lottie.host/956e1e4f-8c98-4206-ae82-50dd50161d69/dtw01aXDDE.json'),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 300,
                ),
                Text(
                  'ASLABTIF',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      color: Colors.red),
                ),
                Text(
                  'TRAVEL',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      color: Colors.blue),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
