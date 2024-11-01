// ignore_for_file: must_be_immutable

import 'dart:developer';

import 'package:flutter/material.dart';

abstract class MyHomePageDelegate {
  void didActionButton();
}

abstract class MyHomePageAbstract {
  MyHomePageDelegate? myHomePageDelegate;
  final counter = ValueNotifier<int>(0);
  void printToast();
}

class MyHomePage extends StatelessWidget implements MyHomePageAbstract {
  MyHomePage({super.key});

  @override
  MyHomePageDelegate? myHomePageDelegate;

  @override
  final counter = ValueNotifier<int>(0);

  @override
  void printToast() {
    log('Toast');
  }

  @override
  Widget build(BuildContext context) {
    log('MyHomePage build');

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('hoLA'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            ValueListenableBuilder<int>(
              valueListenable:counter,
              builder: (context, value, child) {
                return Text(
                  '$value',
                  style: Theme.of(context).textTheme.headlineMedium,
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myHomePageDelegate?.didActionButton();
        },
        tooltip: 'Increment',
        child: const Text(
          'Action',
        ),
      ),
    );
  }
}
