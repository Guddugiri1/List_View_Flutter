import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var arrNames = ['Guddu', 'Vandna', 'Siyu', 'Devu', 'Radhey', 'Pikachu', 'Pankhuri', 'Vandna', 'Siyu', 'Devu', 'Radhey', 'Pikachu', 'Pankhuri'];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme
            .of(context)
            .colorScheme
            .inversePrimary,
        title: const Text('List View'),
      ),
      body: ListView.separated(

        // body: ListView.builder(
        itemBuilder: (context, index) {
          return Row(
            children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    arrNames[index],
                    style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      arrNames[index],
                      style: TextStyle(fontSize: 11, fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  arrNames[index],
                  style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  arrNames[index],
                  style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
                ),
              )
            ],
          );
        },

          //   Text(
          //   arrNames[index],
          //   style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
          // );

        itemCount: arrNames.length,
        // itemExtent: 100,
        // scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index){
          return Divider(height: 50, thickness: 2,);
        },
        // scrollDirection: Axis.horizontal,
      ),
      // body: ListView(
      //   scrollDirection: Axis.horizontal,
      //   reverse: true,
      //   // child: ListView(
      //   children: [
      //     Padding(
      //       padding: EdgeInsets.all(8.0),
      //       child: Text(
      //         'One',
      //         style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
      //       ),
      //     ),
      //     Padding(
      //       padding: EdgeInsets.all(8.0),
      //       child: Text(
      //         'Two',
      //         style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
      //       ),
      //     ),
      //     Padding(
      //       padding: EdgeInsets.all(8.0),
      //       child: Text(
      //         'Three',
      //         style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
      //       ),
      //     ),
      //     Padding(
      //       padding: EdgeInsets.all(8.0),
      //       child: Text(
      //         'Four',
      //         style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
      //       ),
      //     ),
      //     Padding(
      //       padding: EdgeInsets.all(8.0),
      //       child: Text(
      //         'Five',
      //         style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
