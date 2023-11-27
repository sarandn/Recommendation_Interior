import 'package:flutter/material.dart';

class KamarMandiScreen extends StatelessWidget {
  final List<ImageData> imageList = [
    ImageData(
      imagePath: 'assets/kamarmandi1.jpg',
      title: 'Simple and Elegant',

    ),
    ImageData(
      imagePath: 'assets/kamarmandi2.jpg',
      title: 'Title 2',

    ),
    ImageData(
      imagePath: 'assets/kamarmandi3.jpg',
      title: 'Title 3',

    ),
    ImageData(
      imagePath: 'assets/kamarmandi4.jpg',
      title: 'Title 4',

    ),
    // Add more items as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Semua'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
          ),
          itemCount: imageList.length,
          itemBuilder: (context, index) {
            return ImageCard(imageData: imageList[index]);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigate back to MenuScreen when the back button is pressed
          Navigator.pop(context);
        },
        child: Icon(Icons.arrow_back),
      ),
    );
  }
}

class ImageData {
  final String imagePath;
  final String title;


  ImageData({
    required this.imagePath,
    required this.title,

  });
}

class ImageCard extends StatelessWidget {
  final ImageData imageData;

  ImageCard({required this.imageData});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('Item tapped: ${imageData.imagePath}');
        // Handle item tap if needed
      },
      child: Card(
        color: Colors.blueGrey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Image.asset(
                imageData.imagePath,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    imageData.title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                  SizedBox(height: 4.0),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
