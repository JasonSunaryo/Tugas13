import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        appBar: MyAppBar(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: FractionalTranslation(
                        translation: Offset(0.0, -0.0),
                        child: Image(
                          image: AssetImage('img/clothes-hanger.png'),
                          width: 100,
                          height: 100,
                        ),
                      ),
                    ),
                    Text(
                      'Rp 10,000',
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    BlueContainer1(),
                  ],
                ),
                Column(
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: FractionalTranslation(
                        translation: Offset(0.0, -0.0),
                        child: Image(
                          image: AssetImage('img/jacket.png'),
                          width: 100,
                          height: 100,
                        ),
                      ),
                    ),
                    Text(
                      'Rp 20,000',
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    BlueContainer1(),
                  ],
                ),
              ],
            ),
            SizedBox(height: 8.0), // Adjusted spacing
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: FractionalTranslation(
                        translation: Offset(0.0, -0.0),
                        child: Image(
                          image: AssetImage('img/soap.png'),
                          width: 100,
                          height: 100,
                        ),
                      ),
                    ),
                    Text(
                      'Rp 30,000',
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    BlueContainer1(),
                  ],
                ),
                Column(
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: FractionalTranslation(
                        translation: Offset(0.0, -0.0),
                        child: Image(
                          image: AssetImage('img/steak.png'),
                          width: 100,
                          height: 100,
                        ),
                      ),
                    ),
                    Text(
                      'Rp 40,000',
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    BlueContainer1(),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.orange,
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {
          // Handle the back button press
        },
      ),
      title: Text(
        'Godrej',
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {
            // Handle the search button press
          },
        ),
      ],
    );
  }
}

class BlueContainer1 extends StatelessWidget {
  const BlueContainer1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 8.0), // Add margin to separate image and container
      color: Colors.blue,
      padding: const EdgeInsets.all(16.0),
      child: Text(
        '+Keranjang',
        style: TextStyle(
          color: Colors.white,
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
