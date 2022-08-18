import 'package:flutter/material.dart';
import 'package:muslim_app/Screens/home_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.green.shade800,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/firstPageBackground.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 70,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 68,
                backgroundImage: AssetImage('Images/Avatar.jpg'),
              ),
            ),
            const Text(
              'Mustafa Amin',
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontFamily: 'Pacifico',
              ),
            ),
            Text(
              'Flutter Developer',
              style: TextStyle(
                color: Colors.yellow.shade600,
                fontSize: 22,
                fontFamily: 'Mouse Memoirs',
                fontWeight: FontWeight.bold,
              ),
            ),
            const Divider(
              color: Colors.white,
              thickness: 1,
              indent: 17,
              endIndent: 17,
            ),
            const Card(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.green,
                ),
                title: Text("+201125586333"),
              ),
            ),
            const Card(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.green,
                ),
                title: Text("myEmail@gmail.com"),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.green.shade500,
                minimumSize: Size(60, 30),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return HomePage();
                }));
              },
              child: Text(
                'Start',
                style: TextStyle(
                    fontFamily: 'Mouse Memoirs',
                    fontSize: 26,
                    color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
