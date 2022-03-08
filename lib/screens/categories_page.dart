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
              body: TabBarView(children: [
                RecycleablePage(),
                NonRecycleablePage()
              ]),
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
      body: Row(children: [Column(children: [Container(height: MediaQuery.of(context).size.height,)],),Column()],),
    );
  }
}
