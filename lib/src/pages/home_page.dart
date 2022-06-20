import 'package:flutter/material.dart';
import 'package:my_first_app/flavors.dart';

import 'package:my_first_app/src/controller/home_controller.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = HomeController();
  final _editController = TextEditingController();
  @override
  void initState() {
    super.initState();
    /*controller.addListener(() {
      setState(() {});
    }); */
  }

  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height / 100;
    return Scaffold(
      appBar: AppBar(
        title: Text(F.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 8.0),
            Text(F.baseUrl),
            const SizedBox(height: 8.0),
            Row(
              children: [
                Expanded(
                  child: TextFormField(controller: _editController),
                ),
                IconButton(
                    onPressed: () {
                      _controller.addList(_editController.text);
                      _editController.clear();
                    },
                    icon: const Icon(Icons.add))
              ],
            ),
            const SizedBox(height: 16.0),
            AnimatedBuilder(
                animation: _controller,
                builder: (context, child) {
                  return Text(
                    'Contador: ${_controller.counter}',
                    style: Theme.of(context).textTheme.headline4,
                  );
                }),
            const SizedBox(height: 8.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextButton.icon(
                  onPressed: () {
                    _controller.incrementCounter();
                  },
                  icon: const Icon(Icons.add),
                  label: const Text('Incrementar'),
                ),
                TextButton.icon(
                  onPressed: () {
                    _controller.decrementCounter();
                  },
                  icon: const Icon(Icons.remove),
                  label: const Text('Decrementar'),
                )
              ],
            ),
            const SizedBox(height: 8.0),
            const Text('ListView builder:'),
            const SizedBox(height: 8.0),
            AnimatedBuilder(
                animation: _controller,
                builder: (context, child) {
                  return SizedBox(
                    height: _height * 30,
                    child: ListView.builder(
                      itemCount: _controller.listName.length,
                      itemBuilder: (context, index) {
                        var name = _controller.listName[index];
                        return ListTile(
                          title: Text('$name'),
                        );
                      },
                    ),
                  );
                }),
            const SizedBox(height: 8.0),
            const Text('ListView Horizontal:'),
            const SizedBox(height: 8.0),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 120,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.all(16.0),
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    width: 100,
                    height: 100,
                    color: Colors.deepPurpleAccent,
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    width: 100,
                    height: 100,
                    color: Colors.purple,
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    width: 100,
                    height: 100,
                    color: Colors.yellow,
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    width: 100,
                    height: 100,
                    color: Colors.deepPurpleAccent.shade700,
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    width: 100,
                    height: 100,
                    color: Colors.purple.shade900,
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    width: 100,
                    height: 100,
                    color: Colors.yellow.shade900,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8.0),
            const Text('Stack:'),
            const SizedBox(height: 8.0),
            Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Container(
                  width: 300,
                  height: 300,
                  color: Colors.red,
                ),
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.blue,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.green,
                ),
              ],
            ),
          ],
        ),
      ),
    ); //
  }
}
