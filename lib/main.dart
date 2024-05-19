import 'package:flutter/material.dart';

class StateTeksUtama extends State<TeksUtama> {
  var listNama = [
    'Umu Hani', 'Yaya', 'Didit', 'Niam',
    'Arsyad'
  ];
  var listWarna = [
    Colors.red, Colors.purple, Colors.teal, Colors.lime,
    Colors.indigo, Colors.deepPurple, Colors.cyan,
    Colors.blue, Colors.yellow
  ];
  int index = 0;

  void incrementIndex() {
    setState(() {
      index++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(5, (i) {
        return Text(
          listNama[(index + i) % listNama.length],
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontSize: 45,
            fontWeight: FontWeight.bold,
            color: listWarna[(index + i) % listWarna.length],
          ),
        );
      }),
    );
  }
}

class TeksUtama extends StatefulWidget {
  final state = StateTeksUtama();

  @override
  State<StatefulWidget> createState() => state;
}

void main() {
  TeksUtama teksUtama = TeksUtama();
  runApp(
    MaterialApp(
      title: 'Halo Dunia',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Halo Dunia'),
        ),
        body: Center(
          child: teksUtama,
        ),
        floatingActionButton: FloatingActionButton(
          tooltip: 'Refresh',
          child: Icon(Icons.refresh),
          onPressed: teksUtama.state.incrementIndex,
        ),
      ),
    ),
  );
}