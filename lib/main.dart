import 'package:custom_widget/Widgets/constraint.dart';
import 'package:custom_widget/Widgets/font_awesome.dart';
import 'package:custom_widget/Widgets/multiple.dart';
import 'package:custom_widget/Widgets/position.dart';
import 'package:custom_widget/Widgets/richText.dart';
import 'package:custom_widget/Widgets/rounded_btn.dart';
import 'package:custom_widget/Widgets/secondScreeen.dart';
import 'package:custom_widget/Widgets/sizeboxed_widget.dart';
import 'package:custom_widget/Widgets/wrap_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      home: Secondscreeen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("My Custom Widget"),
      ),
      // body: WrapWidget(),
      // body: RichtextWidget(),
      // body: PositionWidget(),
      // body:
      body: Multiple(),
      // body: Constraint(),
      // body: FontAwesome(),
      // body: SizeboxedWidget(),

      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       Container(
      //         width: 150,
      //         child: RoundedBtn(
      //           btnName: "Login",
      //           icon: Icon(
      //             Icons.lock,
      //             color: Colors.white,
      //             size: 18,
      //           ),
      //           callback: () {
      //             print("Working...");
      //           },
      //           textStyle: TextStyle(fontSize: 18, color: Colors.white),
      //         ),
      //       ),
      //       SizedBox(
      //         height: 10,
      //       ),
      //       Container(
      //         width: 150,
      //         child: RoundedBtn(
      //           btnName: "Play  ",
      //           bgColor: Colors.orange,
      //           icon: Icon(
      //             Icons.play_arrow,
      //             color: Colors.white,
      //             size: 18,
      //           ),
      //           callback: () {
      //             print("Play...");
      //           },
      //           textStyle: TextStyle(fontSize: 18, color: Colors.white),
      //         ),
      //       ),
      //     ],
      //   ),
      // )

      // body: Container(
      //   child: Column(
      //     children: [CatItems(), Context(), subCat(), BottomMenu()],
      //   ),
      // ),

      // body: Container(
      //   width: 300,
      //   height: 300,
      //   child: Stack(
      //     children: [
      //       Container(
      //         width: 200,
      //         height: 200,
      //         color: Colors.blueGrey,
      //       ),
      //       Positioned(
      //         child: Container(
      //           width: 200,
      //           height: 200,
      //           color: Colors.grey,
      //         ),
      //         left: 21,
      //         top: 21,
      //       )
      //     ],
      //   ),
      // )
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class CatItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        color: Colors.amber,
        child: ListView.builder(
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(11.0),
            child: SizedBox(
              width: 100,
              child: CircleAvatar(
                backgroundColor: Colors.green,
              ),
            ),
          ),
          itemCount: 10,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}

class Context extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Container(
        color: Colors.blue,
        child: ListView.builder(
          itemBuilder: (context, index) => ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.green,
            ),
            title: Text('Name'),
            subtitle: Text('Mobile No.'),
            trailing: Icon(Icons.delete),
          ),
        ),
      ),
    );
  }
}

class subCat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        color: Colors.orange,
        child: ListView.builder(
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: Colors.yellow,
                )),
          ),
          itemCount: 10,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}

class BottomMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        color: Colors.green,
        child: GridView.count(
          crossAxisCount: 1,
          scrollDirection: Axis.horizontal,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color: Colors.blue),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color: Colors.blue),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color: Colors.blue),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color: Colors.blue),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color: Colors.blue),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color: Colors.blue),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color: Colors.blue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
