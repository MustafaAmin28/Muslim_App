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
                backgroundColor: Color(0xff2e534c),
                radius: 68,
                backgroundImage: AssetImage('assets/images/avatar.png'),
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
                color: Colors.white,
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
                  color: Color(0xff2e534c),
                ),
                title: Text("+201125586333"),
              ),
            ),
            const Card(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Color(0xff2e534c),
                ),
                title: Text("myEmail@gmail.com"),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(0xff2e534c),
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
