import 'package:counter_with_bloc/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  final cubit = CounterCubit();
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Counter'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              BlocBuilder<CounterCubit, int>(
                bloc: cubit,
                builder: (context, state) {
                  return Text(
                    '$state',
                    style: const TextStyle(
                        color: Color.fromARGB(246, 0, 0, 0), fontSize: 30),
                  );
                },
              ),
              const SizedBox(height: 25),
              ElevatedButton(
                onPressed: () {
                  cubit.increase();
                },
                child: const Text('+'),
              ),
              const SizedBox(height: 12),
              ElevatedButton(
                onPressed: () {
                  cubit.decrease();
                },
                child: const Text(
                  '-',
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
