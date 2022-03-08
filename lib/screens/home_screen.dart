// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:recycle_app/screens/categories_page.dart';
import 'package:recycle_app/screens/wallet_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  // final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 224, 214, 214),
        drawer: DrawerList(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            WelcomeBackUser(),
            SizedBox(height: 30),
            CategoryList(),
            Spacer(),
            BottomQR(),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.white,
          onPressed: () {},
          child: Icon(
            Icons.qr_code,
            color: Colors.black,
            size: 35,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}

class BottomQR extends StatelessWidget {
  const BottomQR({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 60,
          color: Colors.green,
        ),
      ],
    );
  }
}

class CategoryList extends StatelessWidget {
  const CategoryList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      height: 250,
      width: MediaQuery.of(context).size.width,
      child: GridView.count(
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          crossAxisCount: 3,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => WalletPage()));
              },
              child: Column(
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Icon(
                      Icons.account_balance_wallet,
                      size: 50,
                      color: Colors.lightGreen,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text('Wallets')
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Icon(Icons.card_giftcard,
                      size: 50, color: Colors.lightGreen),
                ),
                SizedBox(
                  height: 5,
                ),
                Text('Rewards')
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CategoriesPage()));
              },
              child: Column(
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Icon(Icons.category,
                        size: 50, color: Colors.lightGreen),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text('Categories')
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child:
                      Icon(Icons.newspaper, size: 50, color: Colors.lightGreen),
                ),
                SizedBox(
                  height: 5,
                ),
                Text('News')
              ],
            ),
            Column(
              children: [
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child:
                      Icon(Icons.handshake, size: 50, color: Colors.lightGreen),
                ),
                SizedBox(
                  height: 5,
                ),
                Text('Partners')
              ],
            ),
            Column(
              children: [
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Icon(Icons.person, size: 50, color: Colors.lightGreen),
                ),
                SizedBox(
                  height: 5,
                ),
                Text('Profile')
              ],
            ),
          ]),
    );
  }
}

class WelcomeBackUser extends StatelessWidget {
  const WelcomeBackUser({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: <Widget>[
        Container(
          height: 250,
          decoration: BoxDecoration(
            color: Colors.green,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: GestureDetector(
            onTap: () {
              Scaffold.of(context).openDrawer();
            },
            child: Align(
                alignment: AlignmentDirectional.topStart,
                child: Icon(Icons.menu)),
          ),
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: const Text(
                'Welcome Back',
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            CircleAvatar(
              radius: 35,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'User',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 120,
              width: 350,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "0",
                        style: TextStyle(fontSize: 25, color: Colors.green),
                      ),
                      Align(
                          alignment: Alignment.center,
                          child: Text("Current\nRecyPoints")),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  VerticalDivider(
                    thickness: 3,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "0",
                        style: TextStyle(fontSize: 25, color: Colors.green),
                      ),
                      Align(
                          alignment: Alignment.center,
                          child: Text("Recycled Items\n(KG)")),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}

class DrawerList extends StatelessWidget {
  const DrawerList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          const DrawerHeader(
            child: Text('Drawer Header'),
            decoration: BoxDecoration(
              color: Colors.green,
            ),
          ),
          ListTile(
            title: Text('Item 1'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Item 2'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
