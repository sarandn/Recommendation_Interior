import 'package:flutter/material.dart';
import 'kamarmandi_screen.dart';
import 'kamartidur_screen.dart';
import 'login_screen.dart'; // Import the LoginScreen

class MenuScreen extends StatelessWidget {
  final List<MenuModel> menus = [
    MenuModel('Bathroom', Icons.bathtub),
    MenuModel('Bedroom', Icons.bed),
    MenuModel('Garage', Icons.garage),
    MenuModel('Kitchen', Icons.kitchen),
    // Add more menu items as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu Utama'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
          ),
          itemCount: menus.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                // Handle menu item tap
                print('${menus[index].title} tapped');

                // Navigate to KamarMandiScreen when "Bathroom" is tapped
                if (menus[index].title == 'Bathroom') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => KamarMandiScreen()),
                  );
                }
                // Navigate to KamarTidurScreen when "Bedroom" is tapped
                else if (menus[index].title == 'Bedroom') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => KamarTidurScreen()),
                  );
                }
                // Add more conditions for other menu items as needed
              },
              child: Card(
                color: Colors.blueGrey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      menus[index].icon,
                      size: 40,
                      color: Colors.white,
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      menus[index].title,
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigate to LoginScreen when FAB is pressed
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LoginScreen()),
          );
        },
        child: Icon(Icons.arrow_back),
      ),
    );
  }
}

class MenuModel {
  final String title;
  final IconData icon;

  MenuModel(this.title, this.icon);
}
