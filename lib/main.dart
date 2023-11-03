import 'package:flutter/material.dart';
import 'package:timer/components/timer.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF91CB3E)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Best Timer Ever!'),
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
  bool _isTimerRunning = false;

  // Assuming your Timer component has a method to start the timer
  void _startTimer() {
    setState(() {
      _isTimerRunning = true;
      // Add the logic or method call to start the timer here
      // For example: timer.start();
    });
  }

  void _terminateTimer() {
    setState(() {
      _isTimerRunning = false;
      // Add the logic or method call to terminate the timer here
      // For example: timer.terminate();
    });
  }

  _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Timer(), // Your Timer component should be here
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            ElevatedButton(
              onPressed: _isTimerRunning ? _terminateTimer : _startTimer,
              child: Text(_isTimerRunning ? 'Stop Timer' : 'Start Timer'),
              style: ElevatedButton.styleFrom(
                primary: _isTimerRunning ? Colors.red : Colors.green, // Background color
                onPrimary: Colors.white, // Text Color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30), // Rounded edges
                ),
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20), // Button padding
                textStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                elevation: 10, // Shadow elevation
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

