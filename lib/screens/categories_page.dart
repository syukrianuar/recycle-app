import 'package:flutter/material.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  State<CategoriesPage> createState() => CategoriesPageState();
}

class CategoriesPageState extends State<CategoriesPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Recycle Categories'),
          centerTitle: true,
        ),
        body: Scaffold(
            appBar: TabBar(labelColor: Colors.black, tabs: [
              Tab(
                text: "Recycleable",
              ),
              Tab(
                text: "Non-Recycleable",
              )
            ]),
            body: Scaffold(
              body: TabBarView(
                  children: [RecycleablePage(), NonRecycleablePage()]),
            )),
      ),
    );
  }
}

class NonRecycleablePage extends StatelessWidget {
  const NonRecycleablePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("NR"),
      ),
    );
  }
}

class RecycleablePage extends StatelessWidget {
  const RecycleablePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Row(
          children: [
            Column(
              children: [
                Container(
                  width: 90,
                  height: MediaQuery.of(context).size.height,
                  decoration:
                      BoxDecoration(color: Color.fromARGB(255, 192, 192, 192)),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      ImageIcon(
                        AssetImage("assets/metal.png"),
                        size: 50,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Metal"),
                      SizedBox(
                        height: 20,
                      ),
                      ImageIcon(
                        AssetImage("assets/plastic.png"),
                        size: 50,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Plastic"),
                      SizedBox(
                        height: 20,
                      ),
                      ImageIcon(
                        AssetImage("assets/paper.png"),
                        size: 50,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Paper"),
                      SizedBox(
                        height: 20,
                      ),
                      ImageIcon(
                        AssetImage("assets/fabric.png"),
                        size: 50,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Fabric"),
                      SizedBox(
                        height: 20,
                      ),
                      ImageIcon(
                        AssetImage("assets/glass.png"),
                        size: 50,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Glass"),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                )
              ],
            ),
            Column()
          ],
        ),
      ),
    );
  }
}
