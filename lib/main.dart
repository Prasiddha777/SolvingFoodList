import 'package:flutter/material.dart';
import 'list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "My Food List",
        ),
        centerTitle: true,
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 12),
        child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            physics: const ClampingScrollPhysics(),
            itemCount: myList.length,
            itemBuilder: (context, index) {
              return ListTile(
                  isThreeLine: true,
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 12,
                  ),
                  leading: CircleAvatar(
                    radius: 28,
                    // backgroundColor: Colors.amber,
                    backgroundImage: NetworkImage(myList[index].img),
                  ),
                  title: Text(myList[index].name),
                  subtitle: Text(myList[index].desc),
                  trailing: Column(
                    children: [
                      Text(
                        myList[index].price,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),

                      // ignore: deprecated_member_use
                      Container(
                        height: 15,
                        width: 70,
                        child: FlatButton(
                          onPressed: _incrementCounter,
                          child: const Text(
                            "+",
                            textAlign: TextAlign.center,
                          ),
                          color: Colors.indigo,
                          textColor: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Text("$_counter"),
                    ],
                  ));
            }),
      ),
    );
  }
}
