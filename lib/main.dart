import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<StatefulWidget> createState() {
    return _UygulamamState();
  }
}

class _UygulamamState extends State {
  int _sayac = 0;
//sayaç tasarım başlangıç
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Sayaç Ödev asaffurkan 9194"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => sayaciArttir(),
          child: const Icon(Icons.add),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Sayaç",
                style: TextStyle(fontSize: 24),
              ),
              Text(_sayac.toString(), style: const TextStyle(fontSize: 24))
            ],
          ),
        ),
      ),
    );
  }
//sayaç tasarım bitiş

//sayaç arttırma
  void sayaciArttir() {
    setState(() {
      _sayac++;
    });
  }
}
