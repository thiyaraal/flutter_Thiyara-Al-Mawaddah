import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tugas_14/bloc/counter_bloc.dart';
import 'package:tugas_14/bloc/counter_event.dart';
import 'package:tugas_14/bloc/counter_state.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: BlocBuilder<CounterBloc, CounterState>(builder: (context, state) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '${state.value}',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              ElevatedButton(
                  onPressed: () {
                    context.read<CounterBloc>().add(Increment());
                  },
                  child: const Text('increment')),
              const SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () {
                    context.read<CounterBloc>().add(Decrement());
                  },
                  child: const Text('Decrement'))
            ],
          ),
        );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
